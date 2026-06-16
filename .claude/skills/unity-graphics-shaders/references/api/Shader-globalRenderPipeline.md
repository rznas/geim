<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Shader-globalRenderPipeline.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Render pipeline currently in use.

This value is used to filter sub shaders based on the "RenderPipeline" tag. If a sub shader uses the "RenderPipeline" tag, it is used if and only if globalRenderPipeline matches the value completely. A sub shader that doesn't use the "RenderPipeline" tag will match all render pipelines. A matching sub shader is selected for all shaders when this value changes.
