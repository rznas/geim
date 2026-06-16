<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CharacterController-stepOffset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The character controllers step offset in meters.

The maximum height in meters that the character can climb over automatically when moving. This is used to allow the character to smoothly step over small obstacles like stairs or ledges instead of colliding with them.

Increasing the `stepOffset` allows the character to step over taller obstacles without jumping. Decreasing the value restricts the character to only stepping over smaller objects.

- **Higher values** allow smoother traversal over high steps or uneven terrain, but may cause unrealistic movement if set too high (e.g., stepping over full-height walls).
- **Lower values** make the character collide with even small obstacles, potentially requiring jumping or custom logic to overcome them.

This value works in conjunction with the slope limit—if an obstacle’s slope is too steep, even within the `stepOffset`, it might still block movement.

**Note:** See the Manual page Character Controller component which describes `stepOffset` in detail.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public CharacterController controller;    void Example()
    {
        controller = GetComponent<CharacterController>();
        // Allow the character to step over obstacles up to 0.5 meters high
        controller.stepOffset = 0.5f;
    }
}
```
