<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorSettings-asyncShaderCompilation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enable asynchronous Shader compilation in Game and Scene view.

Decouples Shader compilation from rendering to avoid Editor stalls when encountering new Shader variants. A plain cyan color dummy shader is used for rendering until the particular Shader variant compilation has finished. This option affects only Game and Scene view in the Editor.
