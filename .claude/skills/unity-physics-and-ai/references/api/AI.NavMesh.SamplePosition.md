<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMesh.SamplePosition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| sourcePosition | The origin of the sample query. |
| hit | Holds the properties of the resulting location. The value of `hit.normal` is never computed. It is always (0,0,0). |
| maxDistance | Sample within this distance from sourcePosition. |
| areaMask | A mask that specifies the NavMesh areas allowed when finding the nearest point. |

### Returns

**bool** True if the nearest point is found.

### Description

Finds the nearest point based on the NavMesh within a specified range.

The nearest point is found by projecting the input point onto nearby NavMesh instances along the vertical axis. This vertical axis has been chosen for each instance at the time of creation. If this step does not find a projected point within the specified distance, then sampling is extended to surrounding NavMesh positions.

Finds the nearest point based on the distance to the query point. This function does not consider obstructions. For example, in a two-story structure, if the sourcePosition is set to a point on the ceiling on the first floor, the nearest point might be found on the second floor rather than the first floor. The ceiling is not considered as an obstruction.

This function may reduce the frame rate if a large search radius is specified. To avoid frame rate issues, it is recommended that you specify a maxDistance of twice the agent height.

If you are trying to find a random point on the NavMesh, you should use the recommended radius and perform the find multiple times instead of using a very large radius.

```csharp
// RandomPointOnNavMesh
using UnityEngine;
using UnityEngine.AI;public class RandomPointOnNavMesh : MonoBehaviour
{
    public float range = 10.0f;    bool RandomPoint(Vector3 center, float range, out Vector3 result)
    {
        for (int i = 0; i < 30; i++)
        {
            Vector3 randomPoint = center + Random.insideUnitSphere * range;
            NavMeshHit hit;
            if (NavMesh.SamplePosition(randomPoint, out hit, 1.0f, NavMesh.AllAreas))
            {
                result = hit.position;
                return true;
            }
        }
        result = Vector3.zero;
        return false;
    }    void Update()
    {
        Vector3 point;
        if (RandomPoint(transform.position, range, out point))
        {
            Debug.DrawRay(point, Vector3.up, Color.blue, 1.0f);
        }
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| sourcePosition | The origin of the sample query. |
| hit | Holds the properties of the resulting location. The value of `hit.normal` is never computed. It is always (0,0,0). |
| maxDistance | Sample within this distance from sourcePosition. |
| filter | A filter specifying which NavMesh areas are allowed when finding the nearest point. |

### Returns

**bool** True if the nearest point is found.

### Description

Samples the position nearest the sourcePosition on any NavMesh built for the agent type specified by the filter.

Consider only positions on areas defined in the NavMeshQueryFilter.areaMask. A maximum search radius is set by maxDistance. The information of any found position is returned in the hit argument.
