<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CharacterController-detectCollisions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Determines whether other rigidbodies or character controllers collide with this character controller (by default this is always enabled).

This method does not affect collisions detected during the character controller's movement but rather decides whether an incoming collider will be blocked by the controller's collider. For example, a box collider in the Scene will block the movement of the controller, but the box may still fall through the controller if detectCollisions is false. This property is useful to disable the character controller temporarily. For example, you might want to mount a character into a car and disable collision detection until it exits the car again.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    CharacterController controller;    void Start()
    {
        controller = GetComponent<CharacterController>();
        controller.detectCollisions = false;
    }
}
```
