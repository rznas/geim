<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsScene.InterpolateBodies.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interpolates Rigidbodies in this PhysicsScene.

Interpolates all Rigidbodies in this PhysicsScene with Rigidbody.interpolation set to either RigidbodyInterpolation.Interpolate or RigidbodyInterpolation.Extrapolate with the current Time.time value.

This method is called automatically for the default PhysicsScene and therefore any manual calls on the Physics.defaultPhysicsScene will fail.

Additional resources: PhysicsScene.Simulate, PhysicsScene.ResetInterpolationPoses.

```csharp
using UnityEngine;public class SimpleSimulator : MonoBehaviour
{
    private PhysicsScene m_PhysicsScene;    private void Update()
    {
        m_PhysicsScene.InterpolateBodies();
    }    private void FixedUpdate()
    {
        m_PhysicsScene.ResetInterpolationPoses();
        m_PhysicsScene.Simulate(Time.fixedDeltaTime);
    }
}
```

Simulates and interpolates a non-default PhysicsScene.
