<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ControllerColliderHit-controller.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The controller that hit the collider.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    //Disable collision detection on CharacterControllers we touch.
    void OnControllerColliderHit(ControllerColliderHit hit)
    {
        hit.controller.detectCollisions = false;
    }
}
```
