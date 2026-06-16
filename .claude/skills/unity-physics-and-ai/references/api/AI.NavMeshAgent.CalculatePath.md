<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshAgent.CalculatePath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targetPosition | The final position of the path requested. |
| path | The resulting path. |

### Returns

**bool** True if either a complete or partial path is found. False otherwise.

### Description

Calculate a path to a specified point and store the resulting path.

Use this function to avoid gameplay delays by planning a path before it is needed. You can also use this function to check if a target position is reachable before moving the agent. The function takes into account the agent's areaMask, agentTypeID and area costs properties when it searches for a matching path.

This function is synchronous. It performs path finding immediately, which can adversely affect the frame rate when processing very long paths. It is recommended to only perform a few path finds per frame when, for example, evaluating distances to cover points.

Use the returned path to set the path for this agent, or an agent of the same type, with NavMeshAgent.SetPath. For SetPath to work, the agent must be close to the starting point and be allowed to move through the area type where the start point is.

```csharp
using UnityEngine;
using UnityEngine.AI;[RequireComponent(typeof(NavMeshAgent))]
public class ExampleClass : MonoBehaviour
{
    public Transform target;    void Start()
    {
        if (target == null)
            return;        var agent = GetComponent<NavMeshAgent>();
        var path = new NavMeshPath();
        agent.CalculatePath(target.position, path);
        switch (path.status)
        {
            case NavMeshPathStatus.PathComplete:
                Debug.Log($"{agent.name} will be able to reach {target.name}.");
                break;
            case NavMeshPathStatus.PathPartial:
                Debug.LogWarning($"{agent.name} will only be able to move partway to {target.name}.");
                break;
            default:
                Debug.LogError($"There is no valid path for {agent.name} to reach {target.name}.");
                break;
        }
    }
}
```
