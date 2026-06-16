<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMesh.AllAreas.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Area mask constant that includes all NavMesh areas.

Use the mask in query functions, such as Raycast, to indicate that all NavMesh area types are accepted.

```csharp
// TargetReachable
using UnityEngine;
using UnityEngine.AI;public class TargetReachable : MonoBehaviour
{
    public Transform target;
    private NavMeshHit hit;
    private bool blocked = false;    void Update()
    {
        // Allow pass through all area types when testing if the target position
        // is reachable from the transform location.
        blocked = NavMesh.Raycast(transform.position, target.position, out hit, NavMesh.AllAreas);
        Debug.DrawLine(transform.position, target.position, blocked ? Color.red : Color.green);
        if (blocked)
            Debug.DrawRay(hit.position, Vector3.up, Color.red);
    }
}
```

Additional resources: Areas and Costs to learn how to use different Area types.
