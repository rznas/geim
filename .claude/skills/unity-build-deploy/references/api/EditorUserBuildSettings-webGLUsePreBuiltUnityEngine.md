<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorUserBuildSettings-webGLUsePreBuiltUnityEngine.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use prebuilt JavaScript version of Unity engine.

This option is passed to the emscripten compiler for WebGL builds. If enabled, then only the user script code will be compiled to JavaScript and linked dynamically with a prebuilt Unity engine JavaScript module, which significantly reduces build iteration time. The prebuilt Unity engine module is unstripped and therefore is not suitable for release builds. For that reason this property only has effect on development builds, and is ignored otherwise.
