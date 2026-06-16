<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WebGL.WasmCodeOptimization.DiskSizeLTO.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Favor optimizations that minimize build size, at the expense of taking a longer time to build compared to WasmCodeOptimization.BuildTimes. Also enable an additional Link Time Optimizations (LTO) stage.

This option is the same as WasmCodeOptimization.DiskSize but also enables an additional LTO stage. The LTO stage is also known as Whole Program Optimization. Use this option when compiling shipping builds for deployment to end users.
