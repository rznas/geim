<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ControllerColliderHit-collider.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The collider that was hit by the controller.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void OnControllerColliderHit(ControllerColliderHit hit)
    {
        // Call a damage function on the object we hit.
        hit.gameObject.SendMessage("ApplyDamage", 5);
    }
}
```
