<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.VectorGraphics.VectorUtils.ApproximateSceneNodeBounds.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| root | The root node of the hierarchy to computes the bounds from |

### Returns

**Rect** An approximation of the root hierarchy axis-aligned bounding-box

### Description

Computes a rough approximation of the node hierarchy bounds.

This will use the control point positions as a rough estimate of the bounds for the paths and shapes.
