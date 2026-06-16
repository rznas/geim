<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshAgent.Raycast.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targetPosition | The desired end position of movement. |
| hit | Properties of the obstacle detected by the ray (if any). |

### Returns

**bool** True if there is an obstacle between the agent and the target position, otherwise false.

### Description

Trace a straight path towards a target postion in the NavMesh without moving the agent.

This function follows the path of a "ray" between the agent's position and the specified target position. If an obstruction is encountered along the line then a true value is returned and the position and other details of the obstructing object are stored in the `hit` parameter. This can be used to check if there is a clear shot or line of sight between a character and a target object. This function is preferable to the similar Physics.Raycast because the line tracing is performed in a simpler way using the navmesh and has a lower processing overhead.

```csharp
using UnityEngine;
using UnityEngine.AI;public class ExampleClass : MonoBehaviour
{
    public Transform target;
    private NavMeshAgent agent;    void Start()
    {
        agent = GetComponent<NavMeshAgent>();
    }    void Update()
    {
        NavMeshHit hit;
        if (!agent.Raycast(target.position, out hit))
        {
            // Target is "visible" from our position.
        }
    }
}
```
