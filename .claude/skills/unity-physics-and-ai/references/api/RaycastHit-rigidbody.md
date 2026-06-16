<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RaycastHit-rigidbody.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Rigidbody of the collider that was hit. If the collider is not attached to a rigidbody then it is `null`.

```csharp
using UnityEngine;
using UnityEngine.InputSystem;public class Example : MonoBehaviour
{
    // Apply a force to a clicked rigidbody object.    // The force applied to an object when hit.
    float hitForce;    void Update()
    {
        if (Mouse.current.leftButton.wasPressedThisFrame)
        {
            RaycastHit hit;
            Ray ray = Camera.main.ScreenPointToRay(Mouse.current.position.ReadValue());            if (Physics.Raycast(ray, out hit))
            {
                if (hit.rigidbody != null)
                {
                    hit.rigidbody.AddForce(ray.direction * hitForce);
                }
            }
        }
    }
}
```

Additional resources: Physics.Raycast, Physics.Linecast, Physics.RaycastAll.
