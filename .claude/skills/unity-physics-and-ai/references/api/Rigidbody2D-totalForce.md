<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D-totalForce.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The total amount of force that has been explicitly applied to this Rigidbody2D since the last physics simulation step.

When adding force to the Rigidbody2D using Rigidbody2D.AddForce, Rigidbody2D.AddForceAtPosition or Rigidbody2D.AddRelativeForce the force total is summed. This only applies when using ForceMode2D.Force and not when using ForceMode2D.Impulse.

During the next simulation step, the total force will be time-integrated into the Rigidbody2D.linearVelocity then automatically reset to zero.

**NOTE**: Only a Rigidbody2D with a Dynamic Body Type will respond to force or torque. Setting this property on a Kinematic Body Type or Static Body Type will have no effect.

```csharp
using UnityEngine;
using UnityEngine.Assertions;public class Example : MonoBehaviour
{
    void Start()
    {
        // Fetch the rigidbody.
        var body = GetComponent<Rigidbody2D>();        // Make the assumption the body has no previous force applied.
        Assert.AreEqual(Vector2.zero, body.totalForce);        // Initialize a force.
        var force = new Vector2(3f, 2f);        // Add the force.
        body.AddForce(force);        // The total force should be what we just added.
        Assert.AreEqual(force, body.totalForce);        // Add the same force again.
        body.AddForce(force);        // The total force should still be what we've added.
        Assert.AreEqual(force * 2f, body.totalForce);        // We can reset any force that has been applied since the last simulation step.
        body.totalForce = Vector2.zero;
    }
}
```
