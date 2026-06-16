<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CullingResults.GetShadowCasterBounds.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| lightIndex | The index of the shadow-casting light. |
| outBounds | The bounds to be computed. |

### Returns

**bool** True if the light affects at least one shadow casting object in the Scene.

### Description

Returns the bounding box that encapsulates the visible shadow casters. Can be used to, for instance, dynamically adjust cascade ranges.
