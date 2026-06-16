<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ScriptableRenderContext.DrawShadows.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| settings | Specifies which set of shadow casters to draw, and how to draw them. |

### Description

Schedules the drawing of shadow casters for a single Light.

Please note that in the case of DrawShadows called multiple times for the same light and using split spheres, shadow casters whose shadow volumes are fully covered by an earlier split will be discarded in following splits for performance reasons. One should thus use the split with the smallest index in case of split overlaps.

Additional resources: CullingResults, ShadowDrawingSettings.
