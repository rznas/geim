<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.ParentConstraint-rotationAxis.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The rotation axes affected by the ParentConstraint.

Use this property to restrict the rotation of the constrained object on a particular axis.

```csharp
using UnityEngine.Animations;public class ConstraintAxis
{
    public void ConstrainOnlyOnXY(ParentConstraint component)
    {
        component.rotationAxis = Axis.X | Axis.Y;
    }
}
```
