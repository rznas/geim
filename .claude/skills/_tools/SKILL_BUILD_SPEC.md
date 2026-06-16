# Shared spec for building one `unity-*` skill

You are building ONE Unity 6 (6000.x) C# agent skill. A sibling set of nine other
`unity-*` skills is being built in parallel by other agents — stay in YOUR skill's
directory only. Mirror the proven Godot skill suite in shape and tone.

## Environment facts (verified — do not re-litigate)

- Unity docs: `docs/UnityDocumentation/Documentation/en/{Manual,ScriptReference}` — **Unity 6 (6000.x)**.
- **No Unity Editor is installed.** You CANNOT compile-test. Every snippet is
  doc-sourced. Each SKILL.md MUST say so (one honest sentence).
- Your skill's domain pages have ALREADY been converted to Markdown and embedded
  at `<your-skill>/references/api/*.md` (exhaustive over your domain — that's the
  "cover all docs" requirement). Read from there; it's your source of truth.
- Shared tools live in `.claude/skills/_tools/`: `unity.sh` (editor wrapper, fails
  clear with no editor), `unity_html_to_md.py` (the converter).

## Non-negotiable rules

1. **Ground every API claim in an embedded `references/api/*.md` page.** Do NOT
   write Unity API from memory — Unity ≠ Godot in every detail (MonoBehaviour,
   `transform.position`, `GetComponent<T>()`, coroutines, the component model).
   Before writing a code idiom, grep your `api/` dir for the exact class/method
   and copy the real signature. Prefer Unity's own C# example code verbatim.
2. **State verification honestly** in SKILL.md: "Snippets are doc-sourced from the
   embedded Unity 6 ScriptReference (`references/api/`), not compile-tested in this
   environment (no Editor installed)."
3. **Self-contained.** The load-bearing pages are already embedded — reference them
   by relative path (e.g. `references/api/MonoBehaviour.html.md`). Add hand-written
   topic guides in `references/` for anything that needs synthesis across pages.
4. Stay in your skill dir. One commit happens later, suite-wide — do NOT commit.

## What to produce in YOUR skill dir

```
<skill>/
├── SKILL.md              # see shape below
├── scripts/              # scaffold scripts (bash), smoke-runnable without an editor where possible
├── references/
│   ├── api/              # ALREADY POPULATED — exhaustive converted doc pages (don't delete)
│   ├── <topic>.md        # hand-written synthesis guides grounding claims in api/ (you write these)
│   └── troubleshooting.md   # the handful of errors that account for most failures in this domain
└── assets/               # optional copy-paste templates (.csproj snippets, .uxml, .meta examples)
```

## SKILL.md shape (match the Godot skills exactly)

- YAML frontmatter: `name:` (the skill dir name) + a `description:` that is PUSHY
  and trigger-rich — list the concrete tasks/phrases that should invoke this skill
  ("Use this whenever you are…", "Reach for it any time the task is…"), name the
  `_main.md` roles it covers, and state it assumes a buildable project
  (`unity-project-setup`). Look at an existing `godot-*/SKILL.md` for the voice.
- Title + 1–2 sentence framing.
- **"The one thing that trips everyone up"** section — the single biggest Unity
  gotcha in this domain (e.g. for gameplay: the component model + script-name must
  match class name + `[SerializeField]` vs public; for physics: FixedUpdate vs
  Update for Rigidbody, layer collision matrix).
- Verified-command / verified-idiom sections with `csharp` fences copied from `api/`.
- Handoffs to `references/<topic>.md` and `references/api/` for depth.
- "Unity 6 / 6000.x" stated. "Doc-sourced, not compile-tested" stated.
- A short "what this covers / hands off to" closing (name sibling unity-* skills).

## Map to roles (`docs/team_roles/_main.md`)

State which implementation roles your skill serves (e.g. Gameplay Programmer,
Graphics Engineer, QA Tester) — same mapping the Godot suite used.

Keep it tight, opinionated, and accurate. Quality over volume in the prose; the
exhaustive coverage lives in `references/api/`.
