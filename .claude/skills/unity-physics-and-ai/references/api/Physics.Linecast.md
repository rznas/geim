<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics.Linecast.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| start | Start point. |
| end | End point. |
| layerMask | A Layer mask that is used to selectively filter which colliders are considered when casting a ray. |
| queryTriggerInteraction | Specifies whether this query should hit Triggers. |

### Description

Returns true if there is any collider intersecting the line between `start` and `end`.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public Transform target;
    void Update()
    {
        if (Physics.Linecast(transform.position, target.position))
        {
            Debug.Log("blocked");
        }
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| start | Start point. |
| end | End point. |
| layerMask | A Layer mask that is used to selectively filter which colliders are considered when casting a ray. |
| queryTriggerInteraction | Specifies whether this query should hit Triggers. |
| hitInfo | If true is returned, `hitInfo` will contain more information about where the collider was hit. (Additional resources: RaycastHit). |

### Description

Returns true if there is any collider intersecting the line between `start` and `end`.

If true is returned, `hitInfo` will contain more information about where the collider was hit. (Additional resources: RaycastHit). Layer mask is used to selectively ignore colliders when casting a ray.
