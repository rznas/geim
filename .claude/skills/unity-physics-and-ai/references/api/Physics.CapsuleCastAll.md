<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics.CapsuleCastAll.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| point1 | The center of the sphere at the `start` of the capsule. |
| point2 | The center of the sphere at the `end` of the capsule. |
| radius | The radius of the capsule. |
| direction | The direction into which to sweep the capsule. |
| maxDistance | The max length of the sweep. |
| layerMask | A Layer mask that is used to selectively filter which colliders are considered when casting a capsule. |
| queryTriggerInteraction | Specifies whether this query should hit Triggers. |

### Returns

**RaycastHit[]** An array of all colliders hit in the sweep.

### Description

Like Physics.CapsuleCast, but this function will return all hits the capsule sweep intersects.

Casts a capsule against all colliders in the Scene and returns detailed information on each collider which was hit. The capsule is defined by the two spheres with `radius` around `point1` and `point2`, which form the two ends of the capsule. Hits are returned all colliders which would collide against this capsule if the capsule was moved along `direction`. This is useful when a Raycast does not give enough precision, because you want to find out if an object of a specific size, such as a character, will be able to move somewhere without colliding with anything on the way.

**Notes:** For colliders that overlap the capsule at the start of the sweep, RaycastHit.normal is set opposite to the direction of the sweep, RaycastHit.distance is set to zero, and the zero vector gets returned in RaycastHit.point. You might want to check whether this is the case in your particular query and perform additional queries to refine the result. Passing a zero radius results in undefined output and doesn't always behave the same as Physics.Raycast.

Additional resources: Physics.SphereCast, Physics.CapsuleCast, Physics.Raycast, Rigidbody.SweepTest.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Update()
    {
        RaycastHit[] hits;
        CharacterController charCtrl = GetComponent<CharacterController>();
        Vector3 p1 = transform.position + charCtrl.center + Vector3.up * -charCtrl.height * 0.5F;
        Vector3 p2 = p1 + Vector3.up * charCtrl.height;        // Cast character controller shape 10 meters forward, to see if it is about to hit anything
        hits = Physics.CapsuleCastAll(p1, p2, charCtrl.radius, transform.forward, 10);        // Change the material of all hit colliders
        // to use a transparent Shader
        for (int i = 0; i < hits.Length; i++)
        {
            RaycastHit hit = hits[i];
            Renderer rend = hit.transform.GetComponent<Renderer>();            if (rend)
            {
                rend.material.shader = Shader.Find("Transparent/Diffuse");
                Color tempColor = rend.material.color;
                tempColor.a = 0.3F;
                rend.material.color = tempColor;
            }
        }
    }
}
```
