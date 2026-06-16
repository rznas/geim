<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics.OverlapSphere.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Center of the sphere. |
| radius | Radius of the sphere. |
| layerMask | A Layer mask defines which layers of colliders to include in the query. |
| queryTriggerInteraction | Specifies whether this query should hit Triggers. |

### Returns

**Collider[]** Returns an array with all colliders touching or inside the sphere.

### Description

Computes and stores colliders touching or inside the sphere.

Additional resources: Physics.AllLayers. Allocates memory. Consider using Physics.OverlapSphereNonAlloc instead.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void ExplosionDamage(Vector3 center, float radius)
    {
        Collider[] hitColliders = Physics.OverlapSphere(center, radius);
        foreach (var hitCollider in hitColliders)
        {
            hitCollider.SendMessage("AddDamage");
        }
    }
}
```

Additional resources: Ray cast with layers section of Use of layers in Unity.
