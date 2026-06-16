<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CharacterController-isGrounded.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Was the CharacterController touching the ground during the last move?

Indicates whether the CharacterController was touching the ground during the most recent call to CharacterController.Move or CharacterController.SimpleMove.

 This property is updated after each call to Move, based on collision detection with the ground. It returns true if the controller collided with any object below it during the movement — typically used to determine if the character is standing on a surface (e.g., terrain, platform, floor).

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    CharacterController characterController;    void Start()
    {
        characterController = GetComponent<CharacterController>();
    }    void Update()
    {
        if (characterController.isGrounded)
        {
            print("CharacterController is grounded");
        }
    }
}
```
