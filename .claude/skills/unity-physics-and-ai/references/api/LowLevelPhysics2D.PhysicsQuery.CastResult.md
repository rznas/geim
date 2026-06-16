<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsQuery.CastResult.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Cast result when performing ray-cast or shape-cast queries against geometry.

### Properties

| Property | Description |
| --- | --- |
| fraction | The fraction of the input translation at collision in the range (0 to 1). |
| hit | Returns if the cast hit i.e. if the output is valid or not. |
| iterations | The number of iterations used in the calculation. |
| normal | The surface normal at the point of contact. In all non-overlapped cases, this will be a unit-normal. If there was an initial overlap, the normal will be zero (degenerate) along with the CastResult.fraction being zero. |
| point | The point of contact. |

### Operators

| Operator | Description |
| --- | --- |
| bool | Implicitly convert the cast output to a bool using the value in the CastResult.hit flag. |
