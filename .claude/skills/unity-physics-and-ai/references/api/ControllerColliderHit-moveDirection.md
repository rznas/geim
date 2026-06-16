<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ControllerColliderHit-moveDirection.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The direction the CharacterController was moving in when the collision occured.

This is the direction that the CharacterController was moving in when the collision occured. It can be used to find a reasonable direction to apply forces to touched rigidbodies.

Note that this is not necessarily the same as the movement vector passed to CharacterController.Move or CharacterController.SimpleMove. The CharacterController uses a sequence of motions to perform a move in accordance with the move direction and the step Offset, in order to step over obstacles. moveDirection will be the direction of the motion during which the collision was detected.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void OnControllerColliderHit(ControllerColliderHit hit)
    {
        Debug.Log(hit.moveDirection);
    }
}
```
