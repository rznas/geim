<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderQueue.GeometryLast.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The last render queue that is treated as opaque. This value corresponds to a render queue of 2500.

Render queues in [0, GeometryLast] range are treated as opaque objects (sorted based on Camera.opaqueSortMode to reduce render state changes), whereas queues in [GeometryLast+1, 5000] range are treated as semitransparent objects (sorted based on Camera.transparencySortMode, typically back-to-front).

Additional resources: Material.renderQueue, Shader.renderQueue, subshader tags.
