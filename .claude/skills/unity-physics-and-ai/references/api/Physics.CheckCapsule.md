<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics.CheckCapsule.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| start | The center of the sphere at the `start` of the capsule. |
| end | The center of the sphere at the `end` of the capsule. |
| radius | The radius of the capsule. |
| layerMask | A Layer mask that is used to selectively filter which colliders are considered when casting a capsule. |
| queryTriggerInteraction | Specifies whether this query should hit Triggers. |

### Description

Checks if any colliders overlap a capsule-shaped volume in world space.

The capsule is defined by the two spheres with `radius` around `point1` and `point2`, which form the two ends of the capsule.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Given the start and end waypoints of a corridor, check if there is enough
    // room for an object of a certain width to pass through.
    bool CorridorIsWideEnough(Vector3 startPt, Vector3 endPt, float width)
    {
        return Physics.CheckCapsule(startPt, endPt, width);
    }
}
```
