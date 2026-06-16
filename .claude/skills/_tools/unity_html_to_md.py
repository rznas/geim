#!/usr/bin/env python3
"""unity_html_to_md.py — convert Unity 6 doc HTML pages to clean Markdown.

Unity 6 (6000.x) documentation lives at
  docs/UnityDocumentation/Documentation/en/{Manual,ScriptReference}/*.html

Each page wraps its real article in  <div id="content-wrap"> <div class="section">.
We extract ONLY that inner .section and walk it, dropping the nav/header/footer/
sidebar and the .suggest / .feedbackbox / language-list cruft. Code examples are
C# in <pre class="codeExampleCS"> and become ```csharp fences.

bs4 is installed; markdownify/pandoc/html2text are NOT — so the conversion is a
small hand-rolled recursive walk (no extra deps).

Usage:
  python3 unity_html_to_md.py <in.html> [-o out.md]
  python3 unity_html_to_md.py <in.html>                # prints to stdout
  python3 unity_html_to_md.py --dir <htmldir> -O <outdir>   # batch a directory
  python3 unity_html_to_md.py a.html b.html -O <outdir>     # batch a list
"""
import argparse
import os
import re
import sys

from bs4 import BeautifulSoup, NavigableString, Tag

UNITY_VERSION = "Unity 6 (6000.x)"

# Tags we never emit content for (cruft inside .section on some pages).
_DROP_CLASSES = {"suggest", "feedbackbox", "feedback", "otherversionscontent",
                 "lang-list", "signature-CS", "switch-link",
                 "breadcrumbs", "mb20", "nextprev", "tooltipGlossaryLink"}

# Inline markers / glossary tooltip junk to scrub from text.
_SCRUB = re.compile(r"BeginSwitchLink|EndSwitchLink")


def _is_dropped(tag):
    cls = tag.get("class") or []
    return any(c in _DROP_CLASSES for c in cls)


_GLOSS_DROP = {"tooltiptext", "tooltipGlossaryLink", "tooltipMoreInfoLink"}


def _inline(node):
    """Render inline content (text + a/code/em/strong) to a Markdown string."""
    if isinstance(node, NavigableString):
        return _SCRUB.sub("", re.sub(r"\s+", " ", str(node)))
    if not isinstance(node, Tag):
        return ""
    cls = node.get("class") or []
    # Glossary tooltip: keep the term, drop the definition + "See in Glossary".
    if any(c in _GLOSS_DROP for c in cls):
        return ""
    if "tooltip" in cls:
        # the visible term is the first text node before the nested tooltiptext
        parts = []
        for c in node.children:
            if isinstance(c, Tag) and any(x in (c.get("class") or []) for x in _GLOSS_DROP):
                continue
            parts.append(_inline(c))
        return "".join(parts)
    name = node.name
    if name in ("a",):
        text = "".join(_inline(c) for c in node.children).strip()
        href = node.get("href", "")
        # Intra-doc .html links are useless outside the tree — keep just the text.
        if not href or href.startswith("#") or href.endswith(".html") or ".html#" in href:
            return text
        if href.startswith(("http://", "https://")):
            return f"[{text}]({href})" if text else href
        return text
    if name in ("code", "tt"):
        return f"`{''.join(_inline(c) for c in node.children).strip()}`"
    if name in ("em", "i"):
        return f"*{''.join(_inline(c) for c in node.children).strip()}*"
    if name in ("strong", "b"):
        return f"**{''.join(_inline(c) for c in node.children).strip()}**"
    if name == "br":
        return "\n"
    return "".join(_inline(c) for c in node.children)


def _table(tag):
    rows = []
    for tr in tag.find_all("tr"):
        cells = tr.find_all(["td", "th"])
        if not cells:
            continue
        rows.append([_inline(c).strip().replace("\n", " ") for c in cells])
    if not rows:
        return ""
    width = max(len(r) for r in rows)
    rows = [r + [""] * (width - len(r)) for r in rows]
    out = ["| " + " | ".join(rows[0]) + " |",
           "| " + " | ".join(["---"] * width) + " |"]
    for r in rows[1:]:
        out.append("| " + " | ".join(r) + " |")
    return "\n".join(out)


def _list(tag, ordered, depth=0):
    lines = []
    indent = "  " * depth
    i = 1
    for li in tag.find_all("li", recursive=False):
        prefix = f"{i}." if ordered else "-"
        # split nested lists out of the inline text
        nested = [c for c in li.find_all(["ul", "ol"], recursive=False)]
        text = "".join(_inline(c) for c in li.children
                       if not (isinstance(c, Tag) and c.name in ("ul", "ol"))).strip()
        lines.append(f"{indent}{prefix} {text}")
        for n in nested:
            lines.append(_list(n, n.name == "ol", depth + 1))
        i += 1
    return "\n".join(lines)


def _block(tag, out):
    """Append Markdown for a block-level tag to the out list."""
    if _is_dropped(tag):
        return
    name = tag.name
    if name in ("h1", "h2", "h3", "h4", "h5", "h6"):
        level = int(name[1])
        out.append("#" * level + " " + _inline(tag).strip())
    elif name == "p":
        text = _inline(tag).strip()
        if text:
            out.append(text)
    elif name == "pre":
        code = tag.get_text()
        # Unity C# examples carry class codeExampleCS / codeExampleNoCS.
        cls = tag.get("class") or []
        lang = "csharp" if any("CS" in c for c in cls) or "using Unity" in code else ""
        out.append(f"```{lang}\n{code.strip()}\n```")
    elif name == "table":
        t = _table(tag)
        if t:
            out.append(t)
    elif name in ("ul", "ol"):
        out.append(_list(tag, name == "ol"))
    elif name == "blockquote":
        inner = _inline(tag).strip()
        if inner:
            out.append("\n".join("> " + ln for ln in inner.splitlines()))
    elif name in ("div", "section", "dl", "dd", "dt"):
        # descend into containers
        for child in tag.children:
            if isinstance(child, Tag):
                _block(child, out)
            elif isinstance(child, NavigableString) and child.strip():
                out.append(re.sub(r"\s+", " ", child).strip())
    elif name == "img":
        return  # drop images
    else:
        # unknown block: descend to not lose content
        for child in tag.children:
            if isinstance(child, Tag):
                _block(child, out)


def convert(html_path):
    raw = open(html_path, encoding="utf-8", errors="ignore").read()
    soup = BeautifulSoup(raw, "html.parser")
    cw = soup.find(id="content-wrap")
    section = cw.find("div", class_="section") if cw else None
    if section is None:
        section = soup.find("div", class_="section")
    if section is None:
        raise ValueError(f"no content section in {html_path}")

    out = []
    for child in section.children:
        if isinstance(child, Tag):
            _block(child, out)
        elif isinstance(child, NavigableString) and child.strip():
            out.append(re.sub(r"\s+", " ", child).strip())

    # collapse blank runs; scrub leftover switch-link markers
    cleaned = []
    for s in out:
        s = _SCRUB.sub("", s).strip()
        if s:
            cleaned.append(s)
    body = "\n\n".join(cleaned)
    rel = html_path
    fm = (f"<!-- source: {rel}\n"
          f"     {UNITY_VERSION} — converted by unity_html_to_md.py.\n"
          f"     Doc-sourced; not compile-tested in this environment. -->\n\n")
    return fm + body + "\n"


def main():
    ap = argparse.ArgumentParser(description="Convert Unity 6 doc HTML to Markdown.")
    ap.add_argument("inputs", nargs="*", help="HTML file(s)")
    ap.add_argument("--dir", help="convert every .html in this directory")
    ap.add_argument("-o", "--out", help="output file (single input)")
    ap.add_argument("-O", "--outdir", help="output directory (batch)")
    args = ap.parse_args()

    inputs = list(args.inputs)
    if args.dir:
        inputs += [os.path.join(args.dir, f) for f in sorted(os.listdir(args.dir))
                   if f.endswith(".html")]
    if not inputs:
        ap.error("no inputs")

    if len(inputs) == 1 and not args.outdir:
        md = convert(inputs[0])
        if args.out:
            open(args.out, "w", encoding="utf-8").write(md)
            print(f"wrote {args.out}", file=sys.stderr)
        else:
            sys.stdout.write(md)
        return

    if not args.outdir:
        ap.error("batch mode needs -O/--outdir")
    os.makedirs(args.outdir, exist_ok=True)
    for path in inputs:
        try:
            md = convert(path)
        except Exception as e:
            print(f"SKIP {path}: {e}", file=sys.stderr)
            continue
        name = os.path.splitext(os.path.basename(path))[0] + ".md"
        open(os.path.join(args.outdir, name), "w", encoding="utf-8").write(md)
        print(f"wrote {os.path.join(args.outdir, name)}", file=sys.stderr)


if __name__ == "__main__":
    main()
