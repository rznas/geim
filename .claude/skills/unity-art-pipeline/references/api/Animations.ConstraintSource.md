<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.ConstraintSource.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a weighted position that can be used in a constraint.

Use this struct to provide a weighted position to a constraint that implements the IConstraint interface. You can use many constraint sources in a constraint. To adjust the effect these sources have on the constraint, set the weight parameter.

Additional resources: IConstraint PositionConstraint RotationConstraint ScaleConstraint AimConstraint ParentConstraint

```csharp
using UnityEngine;
using UnityEngine.Animations;

// The example creates a new MonoBehaviour that is used alongside a ParentConstraint component.
// At runtime, the component adds two sources to the parent constraint and uses the property
// 'switchSource' to dynamically switch from one to the other.
[RequireComponent(typeof(ParentConstraint))]
public class ConstraintSourceSwitcher : MonoBehaviour
{
    private ParentConstraint m_ParentConstraint;

    public Transform source1;
    public Transform source2;

    public bool switchSource;

    void OnEnable()
    {
        m_ParentConstraint = GetComponent<ParentConstraint>();
        m_ParentConstraint.AddSource(new ConstraintSource { sourceTransform = source1});
        m_ParentConstraint.AddSource(new ConstraintSource { sourceTransform = source2});
    }

    public void Update()
    {
        m_ParentConstraint.SetSource(0, new ConstraintSource
        {
            sourceTransform = source1,
            weight = switchSource ? 0f : 1f
        });
        m_ParentConstraint.SetSource(1, new ConstraintSource
        {
            sourceTransform = source2,
            weight = switchSource ? 1f : 0f
        });
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| sourceTransform | The transform component of the source object. |
| weight | The weight of the source in the evaluation of the constraint. |
