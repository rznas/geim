<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ControllerColliderHit-transform.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The transform that was hit by the controller.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Print the transform's name that collided with this ControllerCollider
    void OnControllerColliderHit(ControllerColliderHit hit)
    {
        if (hit != null)
        {
            Debug.Log("I'm colliding with: " + hit.transform.name);
        }
    }
}
```
