<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshAgent-destination.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gets or attempts to set the destination of the agent in world-space units.

Getting:

Returns the destination set for this agent.

• If a destination is set but the path is not yet processed the position returned will be valid navmesh position that's closest to the previously set position.
 • If the agent has no path or requested path - returns the agents position on the navmesh.
 • If the agent is not mapped to the navmesh (e.g. Scene has no navmesh) - returns a position at infinity.

Setting:

Requests the agent to move to the valid navmesh position that's closest to the requested destination.

• The path result may not become available until after a few frames. Use pathPending to query for outstanding results.
 • If it's not possible to find a valid nearby navmesh position (e.g. Scene has no navmesh) no path is requested. Use SetDestination and check return value if you need to handle this case explicitly.

```csharp
using UnityEngine;
using UnityEngine.AI;[RequireComponent(typeof(NavMeshAgent))]
public class FollowTarget : MonoBehaviour
{
    public Transform target;
    Vector3 destination;
    NavMeshAgent agent;    void Start()
    {
        // Cache agent component and destination
        agent = GetComponent<NavMeshAgent>();
        destination = agent.destination;
    }    void Update()
    {
        // Update destination if the target moves one unit
        if (Vector3.Distance(destination, target.position) > 1.0f)
        {
            destination = target.position;
            agent.destination = destination;
        }
    }
}
```
