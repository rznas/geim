<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera-transparencySortAxis.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An axis that describes the direction along which the distances of objects are measured for the purpose of sorting.

If the TransparencySortMode of the Camera or GraphicsSettings are set to TransparencySortMode.CustomAxis, the rendering pipeline evaluates the distance of the object along the axis specified by this property.

This is used for sorting Renderer components when other, higher priority, criterias fail to distinguish the render order.

This is a useful technique in 2.5D games or isometric games where the SpriteRenderers need to be sorted along the vertical screen axis. For this specific use case, set the TransparencySortMode to TransparencySortMode.CustomAxis and set the axis to (0.0f, 1.0f, 0.0f).
