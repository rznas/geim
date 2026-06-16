<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMesh.FindClosestEdge.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| sourcePosition | The origin of the distance query. |
| hit | Holds the properties of the resulting location. |
| areaMask | A bitfield mask specifying which NavMesh areas can be passed when finding the nearest edge. |

### Returns

**bool** True if the nearest edge is found.

### Description

Locate the closest NavMesh edge from a point on the NavMesh.

The returned NavMeshHit object contains the position and details of the nearest point on the nearest edge of the navmesh. This can be used to query how much extra space there is around the agent.

```csharp
// MeasureSpace
using UnityEngine;
using UnityEngine.AI;public class MeasureSpace : MonoBehaviour
{
    void DrawCircle(Vector3 center, float radius, Color color)
    {
        Vector3 prevPos = center + new Vector3(radius, 0, 0);
        for (int i = 0; i < 30; i++)
        {
            float angle = (float)(i + 1) / 30.0f * Mathf.PI * 2.0f;
            Vector3 newPos = center + new Vector3(Mathf.Cos(angle) * radius, 0, Mathf.Sin(angle) * radius);
            Debug.DrawLine(prevPos, newPos, color);
            prevPos = newPos;
        }
    }    void Update()
    {
        NavMeshHit hit;
        if (NavMesh.FindClosestEdge(transform.position, out hit, NavMesh.AllAreas))
        {
            DrawCircle(transform.position, hit.distance, Color.red);
            Debug.DrawRay(hit.position, Vector3.up, Color.red);
        }
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| sourcePosition | The origin of the distance query. |
| hit | Holds the properties of the resulting location. |
| filter | A filter specifying which NavMesh areas can be passed when finding the nearest edge. |

### Returns

**bool** True if the nearest edge is found.

### Description

Locate the closest NavMesh edge from a point on the NavMesh, subject to the constraints of the filter argument.

The returned NavMeshHit object contains the position and details of the nearest point on the nearest edge of the NavMesh. This can be used to query how much extra space there is around the agent.
