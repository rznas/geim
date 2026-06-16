<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CharacterController-velocity.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The current relative velocity of the Character (see notes).

This allows you to track how fast the character is actually walking, for example when it is stuck at a wall this value will be the zero vector.

Note: The velocity returned is simply the difference in distance for the current timestep before and after a call to CharacterController.Move or CharacterController.SimpleMove. The velocity is relative because it won't track movements to the transform that happen outside of the CharacterController (e.g. character parented under another moving Transform, such as a moving vehicle).

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    CharacterController controller;
    void Start()
    {
        controller = GetComponent<CharacterController>();
    }    void Update()
    {
        Vector3 horizontalVelocity = controller.velocity;
        horizontalVelocity = new Vector3(controller.velocity.x, 0, controller.velocity.z);        // The speed on the x-z plane ignoring any speed
        float horizontalSpeed = horizontalVelocity.magnitude;
        // The speed from gravity or jumping
        float verticalSpeed  = controller.velocity.y;
        // The overall speed
        float overallSpeed = controller.velocity.magnitude;
    }
}
```
