<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsScene.Raycast.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| origin | The starting point of the ray in world coordinates. |
| direction | The direction of the ray. |
| maxDistance | The max distance the ray should check for collisions. |
| layerMask | A Layer mask that is used to selectively filter which colliders are considered when casting a ray. |
| queryTriggerInteraction | Specifies whether this query should hit Triggers. |

### Returns

**bool** True if the ray intersects with a Collider, otherwise false.

### Description

Casts a ray, from point `origin`, in direction `direction`, of length `maxDistance`, against all colliders in the Scene.

You may optionally provide a LayerMask, to filter out any Colliders you aren't interested in generating collisions with. Specifying `queryTriggerInteraction` allows you to control whether or not Trigger colliders generate a hit, or whether to use the global Physics.queriesHitTriggers setting.

This example creates a simple Raycast, projecting forwards from the position of the object's current position, extending for 10 units.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void FixedUpdate()
    {
        // Get the current PhysicsScene
        PhysicsScene physicsScene = gameObject.scene.GetPhysicsScene();        // Define ray direction and origin
        Vector3 origin = transform.position;
        Vector3 direction = transform.TransformDirection(Vector3.forward);        // Max ray distance
        float maxDistance = 10f;        // RaycastAll in the current physics scene
        RaycastHit[] hits = new RaycastHit[10]; // Pre-allocate for performance
        int hitCount = physicsScene.Raycast(origin, direction, hits, maxDistance);        if (hitCount > 0)
        {
            Debug.Log($"Detected {hitCount} hit(s) in front of the object:");
            for (int i = 0; i < hitCount; i++)
            {
                Debug.Log($"Hit {i}: {hits[i].collider.name} at {hits[i].point}");
            }
        }
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| origin | The starting point of the ray in world coordinates. |
| direction | The direction of the ray. |
| hitInfo | If true is returned, `hitInfo` will contain more information about where the collider was hit. (Additional resources: RaycastHit). |
| maxDistance | The max distance the ray should check for collisions. |
| layerMask | A Layer mask that is used to selectively filter which colliders are considered when casting a ray. |
| queryTriggerInteraction | Specifies whether this query should hit Triggers. |

### Returns

**bool** True if the ray intersects with a Collider, otherwise false.

### Description

Casts a ray, from point `origin`, in direction `direction`, of length `maxDistance`, against all colliders in the Scene.

This method generates no garbage.

```csharp
using UnityEngine;
public class RaycastExample : MonoBehaviour
{
    void FixedUpdate()
    {
        RaycastHit hit;        if (Physics.Raycast(transform.position, -Vector3.up, out hit))
            print("Found an object - distance: " + hit.distance);
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| origin | The starting point and direction of the ray. |
| direction | The direction of the ray. |
| raycastHits | The buffer to store the hits into. |
| maxDistance | The max distance the rayhit is allowed to be from the start of the ray. |
| layerMask | A Layer mask that is used to selectively filter which colliders are considered when casting a ray. |
| queryTriggerInteraction | The amount of hits stored into the `results` buffer. |

### Returns

**int** True if the ray intersects with a Collider, otherwise false.

### Description

Casts a ray, from point `origin`, in direction `direction`, of length `maxDistance`, against all colliders in the Scene.

This method generates no garbage.
