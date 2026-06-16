<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingInstanceCullingResults-transformsChanged.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This property is true if a Renderer in the Scene changed its Transform during the last frame. Renderers that use Ray Tracing Mode Off are not taken into account.

The property can be used for example to reset the convergence during path tracing if the user moved a Renderer in the Editor.
