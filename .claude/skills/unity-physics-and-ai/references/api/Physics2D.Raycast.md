<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics2D.Raycast.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| origin | The point in 2D space where the ray originates. |
| direction | A vector representing the direction of the ray. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth, or normal angle. |
| distance | The maximum distance over which to cast the ray. |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**NativeArray<RaycastHit2D>** The NativeArray that contains the results. This must be disposed of unless it contains no results.

### Description

Casts a ray against Colliders in the Scene.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.

Additional resources: ContactFilter2D and RaycastHit2D.

### Parameters

| Parameter | Description |
| --- | --- |
| origin | The point in 2D space where the ray originates. |
| direction | A vector representing the direction of the ray. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth, or normal angle. |
| results | The list to receive results. |
| distance | The maximum distance over which to cast the ray. |

### Returns

**int** Returns the number of results placed in the `results` list.

### Description

Casts a ray against Colliders in the Scene.

The integer return value is the number of results written into the `results` list. The results list will be resized if it doesn't contain enough elements to report all the results. This prevents memory from being allocated for results when the `results` list does not need to be resized, and improves garbage collection performance when the query is performed frequently.

The results can also be filtered by the `contactFilter`.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.

Additional resources: ContactFilter2D and RaycastHit2D.

### Parameters

| Parameter | Description |
| --- | --- |
| origin | The point in 2D space where the ray originates. |
| direction | A vector representing the direction of the ray. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth, or normal angle. |
| results | The array to receive results. The size of the array determines the maximum number of results that can be returned. |
| distance | The maximum distance over which to cast the ray. |

### Returns

**int** Returns the number of results placed in the `results` array.

### Description

Casts a ray against Colliders in the Scene.

This function returns the number of contacts found and places those contacts in the `results` array. The results can also be filtered by the `contactFilter`.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.

Additional resources: ContactFilter2D and RaycastHit2D.

### Parameters

| Parameter | Description |
| --- | --- |
| origin | The point in 2D space where the ray originates. |
| direction | A vector representing the direction of the ray. |
| distance | The maximum distance over which to cast the ray. |
| layerMask | Filter to detect Colliders only on certain layers. |
| minDepth | Only include objects with a Z coordinate (depth) greater than or equal to this value. |
| maxDepth | Only include objects with a Z coordinate (depth) less than or equal to this value. |

### Returns

**RaycastHit2D** The cast results returned.

### Description

Casts a ray against Colliders in the Scene.

A *raycast* is conceptually like a laser beam that is fired from a point in space along a particular direction. Any object making contact with the beam can be detected and reported.

This function returns a RaycastHit2D object with a reference to the Collider that is hit by the ray (the Collider property of the result will be NULL if nothing was hit). The *layerMask* can be used to detect objects selectively only on certain layers (this allows you to apply the detection only to enemy characters, for example).

Overloads of this method that use `contactFilter` can filter the results by the options available in ContactFilter2D.

Raycasts are useful for determining lines of sight, targets hit by gunfire and for many other purposes in gameplay.

Additionally, this will also detect Collider(s) at the start of the ray. In this case, the ray starts inside the Collider and doesn't intersect the Collider surface. This means that the collision normal cannot be calculated, in which case the returned collision normal is set to the inverse of the ray vector being tested. This can easily be detected because such results are always at a RaycastHit2D fraction of zero.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.

Additional resources: LayerMask class, RaycastHit2D class, RaycastAll, Linecast, DefaultRaycastLayers, IgnoreRaycastLayer, raycastsHitTriggers.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Float a rigidbody object a set distance above a surface.    public float floatHeight;     // Desired floating height.
    public float liftForce;       // Force to apply when lifting the rigidbody.
    public float damping;         // Force reduction proportional to speed (reduces bouncing).    Rigidbody2D rb2D;
    void Start()
    {
        rb2D = GetComponent<Rigidbody2D>();
    }    void FixedUpdate()
    {
        // Cast a ray straight down.
        RaycastHit2D hit = Physics2D.Raycast(transform.position, -Vector2.up);        // If it hits something...
        if (hit)
        {
            // Calculate the distance from the surface and the "error" relative
            // to the floating height.
            float distance = Mathf.Abs(hit.point.y - transform.position.y);
            float heightError = floatHeight - distance;            // The force is proportional to the height error, but we remove a part of it
            // according to the object's speed.
            float force = liftForce * heightError - rb2D.linearVelocity.y * damping;            // Apply the force to the rigidbody.
            rb2D.AddForce(Vector3.up * force);
        }
    }
}
```
