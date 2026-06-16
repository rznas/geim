<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.OnControllerColliderHit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| hit | The ControllerColliderHit data associated with this collision. |

### Description

OnControllerColliderHit is called when the CharacterController component hits a collider while performing a Move.

Use this to implement behaviour like pushing rigidbodies, playing sounds, or triggering events in response to objects colliding with the character.

 Additional resources: CharacterController, Collider

```csharp
// This script pushes all rigidbodies that the character touchesusing UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public float pushPower = 2.0F;    void OnControllerColliderHit(ControllerColliderHit hit)
    {
        Rigidbody body = hit.collider.attachedRigidbody;        // no rigidbody
        if (body == null || body.isKinematic)
            return;        // We dont want to push objects below us
        if (hit.moveDirection.y < -0.3f)
            return;        // Calculate push direction from move direction,
        // we only push objects to the sides never up and down
        Vector3 pushDir = new Vector3(hit.moveDirection.x, 0, hit.moveDirection.z);        // If you know how fast your character is trying to move,
        // then you can also multiply the push velocity by that.        // Apply the push
        body.velocity = pushDir * pushPower;
    }
}
```
