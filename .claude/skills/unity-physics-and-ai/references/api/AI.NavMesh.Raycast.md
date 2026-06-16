<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMesh.Raycast.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| sourcePosition | The origin of the ray. |
| targetPosition | The end of the ray. |
| hit | Holds the properties of the ray cast resulting location. |
| areaMask | A bitfield mask specifying which NavMesh areas can be passed when tracing the ray. |

### Returns

**bool** True if the ray is terminated before reaching target position. Otherwise returns false.

### Description

Trace a line between two points on the NavMesh.

The source and destination points are first mapped on the NavMesh, then a ray is traced from the source point towards the target. If the ray hits a NavMesh boundary, the function returns true and the hit data is filled. If the path from the source to target is unobstructed, the function returns false.

If the raycast terminates on an outer edge, `hit.mask` is 0; otherwise it contains the area mask of the blocking polygon.

This function can be used to check if an agent can walk unobstructed between two points on the NavMesh. For example if you character has an evasive dodge move which needs space, you can shoot a ray from the characters location to multiple directions to find a spot where the character can dodge to.

The Raycast is different from physics ray cast because it works on “2.5D”, on the NavMesh. The difference to physics ray casts is that NavMesh ray casts can detect all kinds of navigation obstructions, such as holes in the ground, and it can also climb up slopes, if the area is navigable.

```csharp
// TargetReachable
using UnityEngine;
using UnityEngine.AI;public class TargetReachable : MonoBehaviour
{
    public Transform target;
    private NavMeshHit hit;
    private bool blocked = false;    void Update()
    {
        blocked = NavMesh.Raycast(transform.position, target.position, out hit, NavMesh.AllAreas);
        Debug.DrawLine(transform.position, target.position, blocked ? Color.red : Color.green);        if (blocked)
            Debug.DrawRay(hit.position, Vector3.up, Color.red);
    }
}
```

If you want to find the nearest point on the NavMesh, use physics ray cast to find a point in the world. For more information, refer to the Move an Agent to a Position Clicked by the Mouse example.

### Parameters

| Parameter | Description |
| --- | --- |
| sourcePosition | The origin of the ray. |
| targetPosition | The end of the ray. |
| hit | Holds the properties of the ray cast resulting location. |
| filter | A filter specifying which NavMesh areas can be passed when tracing the ray. |

### Returns

**bool** True if the ray is terminated before reaching target position. Otherwise returns false.

### Description

Traces a line between two positions on the NavMesh, subject to the constraints defined by the filter argument.

The line is terminated on outer edges or a non-passable area.
