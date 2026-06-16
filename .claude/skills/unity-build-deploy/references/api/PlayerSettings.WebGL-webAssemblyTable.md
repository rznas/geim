<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.WebGL-webAssemblyTable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

If enabled, targets the `WebAssembly.Table` language feature, which results in faster JS-Wasm interop and faster build times. `WebAssembly.Table` is not backwards compatible with the older `dynCalls` interop model. If disabled, Unity targets the old deprecated Emscripten `-sDYNCALLS` flag for backwards compatibility with older Unity Web platform JS plugin code. It is recommended to enable this option for new projects that do not utilize any older incompatible JavaScript plugins, and when you prefer fast build iteration times, and to disable it if utilizing `.jslib` files that rely on the older `dynCall()` mechanism.
