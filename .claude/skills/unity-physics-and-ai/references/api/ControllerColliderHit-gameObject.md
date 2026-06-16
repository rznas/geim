<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ControllerColliderHit-gameObject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The game object that was hit by the controller.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void OnControllerColliderHit(ControllerColliderHit hit)
    {
        // Objects we touch, move them to position (0, 0, 0)
        hit.gameObject.transform.position = Vector3.zero;
    }
}
```
