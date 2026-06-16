<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.ScaleConstraint-scalingAxis.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The axes affected by the ScaleConstraint.

Use this property to restrict the effect of the constraint on a particular axis.

```csharp
using UnityEngine.Animations;public class ConstraintAxis
{
    public void ConstrainOnlyOnXY(ScaleConstraint component)
    {
        component.scalingAxis = Axis.X | Axis.Y;
    }
}
```
