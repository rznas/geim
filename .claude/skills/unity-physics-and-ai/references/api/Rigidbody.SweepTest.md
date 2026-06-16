<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody.SweepTest.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| direction | The direction into which to sweep the rigidbody. |
| hitInfo | If true is returned, `hitInfo` will contain more information about where the collider was hit (Additional resources: RaycastHit). |
| maxDistance | The length of the sweep. |
| queryTriggerInteraction | Specifies whether this query should hit Triggers. |

### Returns

**bool** True when the rigidbody sweep intersects any collider, otherwise false.

### Description

Tests if a rigidbody would collide with anything, if it was moved through the Scene.

Tests if a rigidbody would collide with anything, if it was moved through the Scene. This is similar to doing a Physics.Raycast for all points contained in any of a Rigidbody's colliders and returning the closest of all hits (if any) reported. This is useful for AI code, say if you need to know that an object would fit through a gap without colliding with anything.

Note that this function only works when a primitive collider type (sphere, cube or capsule) or a convex mesh is attached to the rigidbody object - concave mesh colliders will not work, although they can be detected in the Scene by the sweep.

Additional resources: Physics.SphereCast, Physics.CapsuleCast, Rigidbody.SweepTestAll.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public float collisionCheckDistance;
    public bool aboutToCollide;
    public float distanceToCollision;
    public Rigidbody rb;    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }    void Update()
    {
        RaycastHit hit;
        if (rb.SweepTest(transform.forward, out hit, collisionCheckDistance))
        {
            aboutToCollide = true;
            distanceToCollision = hit.distance;
        }
    }
}
```
