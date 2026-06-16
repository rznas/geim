<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Cubemap.SmoothEdges.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| smoothRegionWidthInPixels | Pixel distance at edges over which to apply smoothing. |

### Description

Performs smoothing of near edge regions.

Helps to compensate lack of linear interpolation across the edges of cubemap in GPU.

Usually you will want to call this method for the cubemap which is going to be used for glossy reflections.
