<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera-renderingPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The rendering path that should be used, if possible.

In some situations, it may not be possible to use the rendering path specified, In this case the renderer automatically uses a different path; for example, if the underlying GPU/platform does not support the requested one, or some other situation causes a fallback.

For this reason, we also provide the read-only property actualRenderingPath, which allows you to discover which path is actually being used.

Additional resources: actualRenderingPath, RenderingPath.
