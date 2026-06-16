<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AimConstraint-rotationAxis.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The axes affected by the AimConstraint.

Use this property to restrict the effect of the constraint on a particular axis.

```csharp
using UnityEngine.Animations;public class ConstraintAxis
{
    public void ConstrainOnlyOnXY(AimConstraint component)
    {
        component.rotationAxis = Axis.X | Axis.Y;
    }
}
```
