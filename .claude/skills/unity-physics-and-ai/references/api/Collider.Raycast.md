<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider.Raycast.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| ray | The starting point and direction of the ray. |
| hitInfo | If true is returned, `hitInfo` will contain more information about where the collider was hit. |
| maxDistance | The max length of the ray. |

### Returns

**bool** True when the ray intersects the collider, otherwise false.

### Description

Casts a Ray that ignores all Colliders except this one.

Additional resources: RaycastHit.

```csharp
using UnityEngine;
using System.Collections;
using UnityEngine.InputSystem;
                        
public class ExampleClass : MonoBehaviour
{
    public Collider coll;    void Start()
    {
        coll = GetComponent<Collider>();
    }    void Update()
    {
        // Move this object to the position clicked by the mouse.
        if (Mouse.current.leftButton.wasPressedThisFrame)
        {
            Ray ray = Camera.main.ScreenPointToRay(Mouse.current.position.ReadValue());
            RaycastHit hit;            if (coll.Raycast(ray, out hit, 100.0f))
            {
                transform.position = ray.GetPoint(100.0f);
            }
        }
    }
}
```
