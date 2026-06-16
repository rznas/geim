<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.VectorGraphics.VectorUtils.SceneNodeBounds.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| root | The root node of the hierarchy to computes the bounds from |

### Returns

**Rect** An approximation of the node hierarchy axis-aligned bounding-box

### Description

Computes a pretty accurate approximation of the scene bounds.

This will properly evaluate the bounds of the paths and shapes, but will ignore the paths stroke widths.
