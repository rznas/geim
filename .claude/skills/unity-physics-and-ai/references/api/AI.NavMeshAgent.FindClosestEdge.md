<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshAgent.FindClosestEdge.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| hit | Holds the properties of the resulting location. |

### Returns

**bool** True if a nearest edge is found.

### Description

Locate the closest NavMesh edge.

The returned NavMeshHit object contains the position and details of the nearest point on the nearest edge of the Navmesh. Since an edge typically corresponds to a wall or other large object, this could be used to make a character take cover as close to the wall as possible.

```csharp
using UnityEngine;
using UnityEngine.AI;
using System.Collections;public class ExampleClass : MonoBehaviour {
    private NavMeshAgent agent;
    void Start() {
        agent = GetComponent<NavMeshAgent>();
    }    void Update() {
        if (Input.GetMouseButtonDown(0))
            TakeCover();
    }    void TakeCover() {
        NavMeshHit hit;
        if (agent.FindClosestEdge(out hit))
            agent.SetDestination(hit.position);
    }
}
```
