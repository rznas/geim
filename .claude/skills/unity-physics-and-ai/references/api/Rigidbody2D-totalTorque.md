<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D-totalTorque.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The total amount of torque that has been explicitly applied to this Rigidbody2D since the last physics simulation step.

When adding torque to the Rigidbody2D using Rigidbody2D.AddTorque or Rigidbody2D.AddForceAtPosition (when force is applied away from the worldCenterOfMass) the torque total is summed. When the physics simulation step runs, this total torque is used.

During the next simulation step, the total torque will be time-integrated into the Rigidbody2D.angularVelocity then automatically reset to zero.

**NOTE**: Only a Rigidbody2D with a Dynamic Body Type will respond to force or torque. Setting this property on a Kinematic Body Type or Static Body Type will have no effect.

```csharp
using UnityEngine;
using UnityEngine.Assertions;public class Example : MonoBehaviour
{
    void Start()
    {
        // Fetch the rigidbody.
        var body = GetComponent<Rigidbody2D>();        // Make the assumption the body has no previous torque applied.
        Assert.AreApproximatelyEqual(0.0f, body.totalTorque, Mathf.Epsilon);        // Initialize a torque.
        var torque = 5f;        // Add the torque.
        body.AddTorque(torque);        // The total torque should be what we just added.
        Assert.AreApproximatelyEqual(torque, body.totalTorque, Mathf.Epsilon);        // Add the same torque again.
        body.AddTorque(torque);        // The total torque should still be what we've added.
        Assert.AreEqual(torque * 2f, body.totalTorque);        // We can reset any torque that has been applied since the last simulation step.
        body.totalTorque = 0f;
    }
}
```
