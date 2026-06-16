<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.VectorGraphics.VectorUtils.EvalNormal.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| segment | The curve segment on which to evaluate the normal |
| t | The parametric location on the curve |

### Returns

**Vector2** The normal of the curve at parametric location "t"

### Description

Evalutes the normal on a curve segment.

A positive normal at a point on the bezier curve is always on the right side of the forward direction (tangent) of the curve at that point.
