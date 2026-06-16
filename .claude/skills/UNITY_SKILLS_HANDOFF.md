# Handoff: build the Unity 6 C# skill suite

You are picking up where the **Godot** skill suite left off. Your job: build a
parallel set of agent skills for the **Unity 6** game engine, C# scripting,
grounded in the local docs at `docs/UnityDocumentation/`. Same proven pattern,
same discipline. **Read this whole doc before starting.**

---

## 0. What already exists (study it first — it's your template)

Nine verified Godot skills live in `.claude/skills/godot-*`:

```
godot-project-setup  godot-gameplay-csharp  godot-physics-and-ai
godot-graphics-shaders  godot-art-pipeline  godot-audio
godot-ui-csharp  godot-qa-headless  godot-export-build
```

**Open `godot-project-setup/` and `godot-physics-and-ai/` and read them end to
end before writing anything.** They are the gold standard for shape and tone.
Each skill is:

```
<skill-name>/
├── SKILL.md          # pushy description, "the one gotcha" section, verified commands
├── scripts/          # shared engine wrapper + scaffold scripts (all smoke-tested)
├── references/       # doc-grounded topic files + a troubleshooting.md
└── assets/           # copy-paste templates (optional)
```

There is a project memory describing the suite and the bugs that compile-testing
caught: read `~/.claude/projects/-home-reza-projects-game/memory/godot-csharp-skill-suite.md`.

### Non-negotiable process rules (the user enforced these — they matter)

1. **Read the relevant Unity docs FULLY before writing each skill.** The Godot
   suite's #3 was first written from model memory and had real API bugs
   (`tr()` vs `Tr()`, wrong gravity call, missing nav guards). The user caught it
   and required: *read docs → write → verify → fix*. Do not write Unity API from
   memory. Unity's API differs from Godot in every detail — `MonoBehaviour`,
   `transform.position`, `GetComponent<T>()`, coroutines, the component model —
   ground every claim in `docs/UnityDocumentation/`.
2. **Verify before claiming done.** For Godot we compile-tested every snippet
   against the real binary. For Unity, see §4 — the verification story is
   different (likely no editor installed) and you must decide and state your
   verification method honestly. If you cannot compile-test, say so explicitly in
   each SKILL.md and lean harder on copying exact doc text.
3. **Copy required docs INTO the skill dir when needed.** The user explicitly
   wants this: for each concept the skill is comprehensive, and if a doc page is
   load-bearing, the converted markdown should live in the skill's `references/`
   so the skill is self-contained and doesn't depend on the 1.1 GB doc tree at
   runtime. (The Godot skills paraphrased docs; Unity skills should go further and
   embed the converted source pages they rely on.)
4. **One commit at the end**, not per skill (unless the user says otherwise).
   Currently on `main` — branch first before committing.
5. **Do NOT do this whole job in one blind pass.** Prove the pattern on the
   foundation skill first (the Unity equivalent of `godot-project-setup`), get the
   user's sign-off, then mass-produce. Ask the user the build-order/scope
   questions up front (see §6).

---

## 1. The Unity docs — verified facts

- Location: `docs/UnityDocumentation/Documentation/en/`
- **Version: Unity 6 (6000.4)** — state this in every SKILL.md. APIs are Unity 6;
  don't mix in Unity 2019/2021 idioms.
- Size: **1.1 GB**, ~39,584 HTML files.
- `Manual/` — 2,848 HTML pages (concepts, workflows, how-tos). Entry point:
  `Manual/UnityManual.html`.
- `ScriptReference/` — 36,054 HTML pages (the C# API: one page per class/member,
  most with C# examples — `using UnityEngine`).
- `StaticFiles/`, `StaticFilesManual/`, `uploads/` — css/js/images; ignore for
  text extraction.
- Scripting language: **C#** (this is what the user wants, matching the Godot
  suite). MonoBehaviour-based.

### HTML structure (pinned — your converter depends on this)

Each page wraps real content in `<div id="content-wrap">` → `<div class="section">`.
That inner `.section` is the article body (heading, paragraphs, `<pre>` code,
tables) WITHOUT the nav/header/footer/sidebar. **Do not** select `class="content"`
blindly — that class also appears in the header nav. Verified extraction with
Python `bs4` (which IS installed; pandoc / html2text / markdownify are NOT):

```python
from bs4 import BeautifulSoup
soup = BeautifulSoup(open(path, encoding="utf-8", errors="ignore").read(), "html.parser")
body = soup.find(id="content-wrap").find("div", class_="section")
# body.find('h1'), body.find_all('p'), body.find_all('pre'), tables — all intact
```

Sanity-checked: `Manual/2Dor3D.html` → h1 "2D and 3D projects", clean first
paragraph. `ScriptReference/MonoBehaviour.html` (44 KB) has `class="content"` and
C# examples.

---

## 2. First task: write the HTML→Markdown conversion script

The user explicitly wants conversion done **by a script, not by hand**. Build
`scripts/unity_html_to_md.py` (put it somewhere sensible, e.g. a
`.claude/skills/_tools/` dir, and reference it from skills that need converted
pages). Requirements:

- Input: a Unity doc HTML path (Manual or ScriptReference) or a list/dir.
- Extract `#content-wrap > div.section` (per §1). Drop nav, header, footer,
  breadcrumbs, "Leave feedback", language list, the `.suggest`/`.feedbackbox`
  cruft.
- Convert to clean Markdown: `<h1-6>`→`#`, `<p>`→text, `<pre>`/`<code>`→fenced
  ```csharp blocks (Unity code examples are C#), `<table>`→MD tables, `<ul>/<ol>`
  →lists, `<a href>`→keep link text (rewrite intra-doc `.html` links or strip
  them — your call, but be consistent), `<img>`→drop or note.
- `markdownify` would make this easy but is **not installed**. Either: (a) `pip
  install markdownify` into the environment (check with the user / the env allows
  it — Python 3.12.3), or (b) hand-roll the conversion with bs4 + recursion. Pick
  one, justify it, keep the script small and readable.
- Output: `<name>.md` with a tiny frontmatter noting source path + Unity 6.
- **Verify the script** on 3–5 representative pages (a Manual concept page, a
  ScriptReference class page with code, a page with a table) and eyeball the MD.
  Fix the converter until those look right BEFORE using it at scale.

This script is the backbone for rule #3 (embedding source docs into skills).

---

## 3. The Unity skill set (map to `docs/team_roles/_main.md`)

Mirror the Godot suite, re-grounded in Unity. Propose this set to the user (§6),
adjust per their answer. Each maps to the same implementation roles `_main.md`
defines. **Names are suggestions** — confirm with the user.

| # | Skill (suggested) | Unity concepts | `_main.md` roles | Key Manual/ScriptRef areas |
|---|-------------------|----------------|------------------|----------------------------|
| 1 | `unity-project-setup` | project structure, Editor CLI/batchmode, Packages (UPM), assembly defs, building from CLI | Engine, Tools | Manual: project creation, command-line args, `-batchmode -quit`, Package Manager |
| 2 | `unity-gameplay-csharp` | MonoBehaviour lifecycle (Awake/Start/Update/FixedUpdate), GameObject/Component, `GetComponent<T>`, prefabs, ScriptableObjects, events, coroutines | Gameplay, Systems Designer | ScriptRef: MonoBehaviour, GameObject, Transform, Component; Manual: prefabs, ScriptableObject |
| 3 | `unity-physics-and-ai` | Rigidbody/Collider (3D) + Rigidbody2D/Collider2D, raycasts, layers, CharacterController, NavMesh/NavMeshAgent, FSM enemies | Gameplay, AI Programmer | Manual: physics, NavMesh; ScriptRef: Rigidbody, Physics.Raycast, NavMeshAgent |
| 4 | `unity-graphics-shaders` | URP/built-in, Materials, Shader Graph + HLSL/ShaderLab, particles (VFX Graph/Shuriken), post-processing, lighting | Graphics, VFX, Tech Artist | Manual: URP, ShaderLab, Shader Graph, Particle System, post-processing |
| 5 | `unity-art-pipeline` | importing FBX/glTF/textures, the import pipeline + .meta files, Animator/Animation/Mecanim, sprites | 3D Modeler, Animator, Tech Artist | Manual: importing assets, .meta, Animator, Animation, Sprite |
| 6 | `unity-audio` | AudioSource/AudioListener, AudioMixer + groups/snapshots, effects, spatial audio | Composer, Sound Designer | Manual: Audio, AudioMixer; ScriptRef: AudioSource, AudioMixer |
| 7 | `unity-ui-csharp` | UI Toolkit (UXML/USS) AND/OR uGUI (Canvas/RectTransform), input, localization | UI/UX Artist, Tech Designer | Manual: UI Toolkit, Canvas, RectTransform, Localization |
| 8 | `unity-qa-testing` | Unity Test Framework (EditMode/PlayMode), `-runTests -batchmode`, Play mode tests, CI | QA + Compliance Tester | Manual: Unity Test Framework, testing; CLI test runner |
| 9 | `unity-build-deploy` | Build pipeline (BuildPipeline/`-buildTarget`), player settings, platforms, Netcode for GameObjects (multiplayer) | Producer, Compliance, Network | Manual: build, player settings, platforms; Netcode |

Notes vs Godot:
- Unity's **component model** (compose behavior by attaching components to
  GameObjects) is the central mental model — equivalent to Godot's node tree but
  different. Get this right in skill #2; everything else leans on it.
- Unity has **`.meta` files** for every asset (like Godot's `.import`) — must be
  committed; explain in skill #5 and #1.
- Rendering: Unity 6 defaults toward **URP**; built-in pipeline still exists. Note
  which a skill targets.
- UI: Unity has **two** UI systems (UI Toolkit, the newer; uGUI, the established).
  Ask the user which to prioritize (§6) — don't cover both shallowly.

---

## 4. Verification — decide and be honest

For Godot, every snippet was compile-tested against the installed binary. For
Unity:

- **No Unity editor is installed** (`~/apps` has none; no `unity` on PATH).
  Confirm this yourself. If you can get a Unity 6 editor + a license in batchmode,
  you CAN compile-test (`-batchmode -quit -projectPath ... -executeMethod ...`)
  and run PlayMode tests headlessly — that's the gold standard, do it.
- If you **cannot** install/license Unity, you cannot compile-test. Then:
  - Ground every API claim in the exact ScriptReference page (copy the relevant
    converted `.md` into the skill's `references/`).
  - State plainly in each SKILL.md: "snippets are doc-sourced, not compile-tested
    in this environment."
  - Prefer copying Unity's own C# example code verbatim (the ScriptReference
    examples are authoritative) over writing fresh snippets.
- Either way: ask the user (§6) whether they want a Unity editor installed for
  real verification, since it materially changes skill trustworthiness.

---

## 5. The shared wrapper

Like Godot's `scripts/godot.sh`, make a `scripts/unity.sh` that resolves the
Unity editor binary (`$UNITY_PATH` → known install → PATH) and forwards args
(e.g. `-batchmode -nographics -quit`). Copy it into each skill that runs Unity,
or keep one in `_tools/` and reference it. If no editor is installed, the wrapper
should fail with a clear "install Unity 6 and set $UNITY_PATH" message — same
pattern as `godot.sh`'s missing-binary branch (read it).

---

## 6. Ask the user these BEFORE building (use AskUserQuestion)

1. **Build order**: prove the foundation skill (`unity-project-setup`) + get
   sign-off, then mass-produce? (Recommended — that's how Godot went.)
2. **Verification**: install a Unity 6 editor for real compile/PlayMode testing,
   or doc-grounded only (no editor)? This changes everything about trust.
3. **UI system**: UI Toolkit (newer, UXML/USS), uGUI (Canvas, established), or
   both? Affects skill #7 scope.
4. **Render pipeline**: target URP (Unity 6 default), built-in, or both? Affects
   skill #4.
5. **Skill scope**: the 9 above, or a different cut? (e.g. split multiplayer out,
   merge audio.)
6. **Install location**: project-local `.claude/skills/` (like Godot — recommended,
   versions with the repo) or user-global?

Don't start writing skills until these are answered. Pick sane defaults, present
them, let the user adjust.

---

## 7. Definition of done

- A working, verified `unity_html_to_md.py` converter (tested on sample pages).
- A shared `unity.sh` wrapper.
- The agreed set of `unity-*` skills, each with: pushy doc-accurate SKILL.md
  (Unity 6 stated), scaffold scripts, `references/` containing converted+embedded
  source doc pages for load-bearing concepts, and a `troubleshooting.md`.
- Foundation skill proven + signed off before the rest.
- Honest verification status in every SKILL.md.
- One commit on a branch (not `main`), suite-wide, at the end.
- Update the project memory index
  (`~/.claude/projects/-home-reza-projects-game/memory/`) with a `unity-csharp-skill-suite`
  entry mirroring the Godot one.

Good luck. Read the Godot skills, read the Unity docs, don't invent API.
