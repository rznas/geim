<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RaycastHit-point.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The impact point in world space where the ray hit the collider.

```csharp
using UnityEngine;
using UnityEngine.InputSystem;public class Example : MonoBehaviour
{
    // Apply a force to a rigidbody in the Scene at the point
    // where it is clicked.    // The force with which the target is "poked" when hit.
    float pokeForce;    void Update()
    {
        if (Mouse.current.leftButton.wasPressedThisFrame)
        {
            RaycastHit hit;
            var ray = Camera.main.ScreenPointToRay(Mouse.current.position.ReadValue());            if (Physics.Raycast(ray, out hit))
            {
                if (hit.rigidbody != null)
                {
                    hit.rigidbody.AddForceAtPosition(ray.direction * pokeForce, hit.point);
                }
            }
        }
    }
}
```

Additional resources: Physics.Raycast, Physics.Linecast.
