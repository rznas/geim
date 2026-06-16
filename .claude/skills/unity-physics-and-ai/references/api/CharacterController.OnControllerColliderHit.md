<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CharacterController.OnControllerColliderHit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

OnControllerColliderHit is called when the controller hits a collider while performing a Move.

This can be used to push objects when they collide with the character.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // this script pushes all rigidbodies that the character touches
    float pushPower = 2.0f;
    void OnControllerColliderHit(ControllerColliderHit hit)
    {
        Rigidbody body = hit.collider.attachedRigidbody;        // no rigidbody
        if (body == null || body.isKinematic)
        {
            return;
        }        // We dont want to push objects below us
        if (hit.moveDirection.y < -0.3)
        {
            return;
        }        // Calculate push direction from move direction,
        // we only push objects to the sides never up and down
        Vector3 pushDir = new Vector3(hit.moveDirection.x, 0, hit.moveDirection.z);        // If you know how fast your character is trying to move,
        // then you can also multiply the push velocity by that.        // Apply the push
        body.velocity = pushDir * pushPower;
    }
}
```
