<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshHit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Information about a position that is the result of a query ran on the NavMesh.

The object represents a valid result if the `distance` and `position` properties have finite values. Otherwise, the object represents a result that could not be calculated from the input data provided to the query. Refer to the documentation of each query method for details about the situations that produce invalid results.

**Note:** You can use `float.isFinite()` to determine whether a value is finite.

```csharp
using UnityEngine;
using UnityEngine.AI;

public class ShowLineOfSightToTarget : MonoBehaviour
{
    public Transform target;
    NavMeshHit m_RayEnd;

    void Update()
    {
        // Detect whether a NavMesh edge blocks a straight path to the target.
        NavMesh.Raycast(transform.position, target.position, out m_RayEnd, NavMesh.AllAreas);
        var isRaySegmentOnNavMesh = float.IsFinite(m_RayEnd.distance);
        if (isRaySegmentOnNavMesh)
        {
            Debug.DrawLine(transform.position, m_RayEnd.position, m_RayEnd.hit ? Color.red : Color.green);
            Debug.DrawLine(m_RayEnd.position, target.position, Color.gray);
            if (m_RayEnd.hit)
            {
                Debug.DrawLine(m_RayEnd.position, m_RayEnd.position + Vector3.up, Color.red);
                Debug.DrawLine(m_RayEnd.position, m_RayEnd.position + m_RayEnd.normal, Color.yellow);
            }
        }
        else
        {
            Debug.DrawLine(transform.position, target.position, Color.magenta);
        }
    }
}
```

Additional resources: NavMesh.SamplePosition, NavMesh.FindClosestEdge, NavMesh.Raycast, NavMeshAgent.FindClosestEdge, NavMeshAgent.Raycast, NavMeshAgent.SamplePathPosition.

### Properties

| Property | Description |
| --- | --- |
| distance | Distance to the point of hit. |
| hit | Flag set when the query encounters a particular valid situation. |
| mask | Bitmask that specifies the NavMesh area type at the point of hit. |
| normal | Normal of the polygon edge where the query terminates. |
| position | Position of hit. |
