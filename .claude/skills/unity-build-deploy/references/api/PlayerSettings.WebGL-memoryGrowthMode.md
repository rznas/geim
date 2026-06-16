<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.WebGL-memoryGrowthMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The growth mode for WASM heap memory.

The growth mode controls at which rate WASM heap memory grows if more memory is allocated than what is currently available (Recommended default: Geometric). The growth mode None results in a fixed heap memory size. The growth mode Linear increases the heap by a constant amount. The growth mode Geometric increases the heap by a given percentage.
