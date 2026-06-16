<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics.RaycastAll.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| ray | The starting point and direction of the ray. |
| maxDistance | The max distance the rayhit is allowed to be from the start of the ray. |
| layerMask | A Layer mask that is used to selectively filter which colliders are considered when casting a ray. |
| queryTriggerInteraction | Specifies whether this query should hit Triggers. |

### Returns

**RaycastHit[]** An array of RaycastHit objects. Note that the order of the results is undefined.

### Description

Casts a ray through the Scene and returns all hits. Note that order of the results is undefined.

Additional resources: Raycast.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Update()
    {
        RaycastHit[] hits;
        hits = Physics.RaycastAll(transform.position, transform.forward, 100.0F);        for (int i = 0; i < hits.Length; i++)
        {
            RaycastHit hit = hits[i];
            Renderer rend = hit.transform.GetComponent<Renderer>();            if (rend)
            {
                // Change the material of all hit colliders
                // to use a transparent shader.
                rend.material.shader = Shader.Find("Transparent/Diffuse");
                Color tempColor = rend.material.color;
                tempColor.a = 0.3F;
                rend.material.color = tempColor;
            }
        }
    }
}
```

**Notes:** Raycasts will not detect colliders for which the raycast origin is inside the collider.

### Parameters

| Parameter | Description |
| --- | --- |
| origin | The starting point of the ray in world coordinates. |
| direction | The direction of the ray. |
| maxDistance | The max distance the rayhit is allowed to be from the start of the ray. |
| layerMask | A Layer mask that is used to selectively filter which colliders are considered when casting a ray. |
| queryTriggerInteraction | Specifies whether this query should hit Triggers. |

### Description

Additional resources: Raycast.

See example above.
