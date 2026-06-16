<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorUserBuildSettings-androidCreateSymbols.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies the type of symbol package to create.

The name of the file containing the symbol package includes the bundle version and bundle version code. The Library symbols of the chosen type are packed inside the file. You can use these symbols to symbolicate stack traces or perform source debugging. Symbolication converts the memory addresses shown in a raw stack trace to the string names in the symbol file.

**Note:** `androidCreateSymbols` is obsolete. Use UserBuildSettings.DebugSymbols.level instead.
