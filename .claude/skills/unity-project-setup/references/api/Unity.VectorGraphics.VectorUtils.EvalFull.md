<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.VectorGraphics.VectorUtils.EvalFull.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| segment | The curve segment on which to evaluate the normal |
| t | The parametric location on the curve |
| tangent | The output tangent at parametric location "t" |

### Returns

**Vector2** The position on the curve at parametric location "t"

### Description

Evalutes both the position and tangent on a curve segment.

This is more efficient than calling "Eval" and "EvalTangent" successively.

### Parameters

| Parameter | Description |
| --- | --- |
| segment | The curve segment on which to evaluate the normal |
| t | The parametric location on the curve |
| tangent | The output tangent at parametric location "t" |
| normal | The output normal at parametric location "t" |

### Returns

**Vector2** The position on the curve at parametric location "t"

### Description

Evalutes the position, tangent and normal on a curve segment.

This is more efficient than calling "Eval", "EvalTangent" and "EvalNormal" successively.
