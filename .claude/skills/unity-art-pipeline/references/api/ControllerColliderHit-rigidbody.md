<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ControllerColliderHit-rigidbody.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The rigidbody that was hit by the controller.

Null if we didn't touch a rigidbody but a static collider.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Activate the gravity of other object we touch
    void OnControllerColliderHit(ControllerColliderHit hit)
    {
        if (hit != null)
        {
            hit.rigidbody.useGravity = true;
        }
    }
}
```
