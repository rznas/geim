<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMesh.CalculatePath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| sourcePosition | The initial position of the path requested. |
| targetPosition | The final position of the path requested. |
| areaMask | A bitfield mask specifying which NavMesh areas can be passed when calculating a path. |
| path | The resulting path. |

### Returns

**bool** True if either a complete or partial path is found. False otherwise.

### Description

Calculate a path between two points and store the resulting path.

Use this function to avoid gameplay delays by planning a path before it is needed. You can also use this function to check if a target position is reachable before moving the agent.

This function is synchronous. It performs path finding immediately which can adversely affect the frame rate when processing very long paths. It is recommended to only perform a few path finds per frame when, for example, evaluating distances to cover points.

Use the returned path to set the path for an agent with NavMeshAgent.SetPath. For SetPath to work, the agent must be close to the starting point.

```csharp
// ShowGoldenPath
using UnityEngine;
using UnityEngine.AI;public class ShowGoldenPath : MonoBehaviour
{
    public Transform target;
    private NavMeshPath path;
    private float elapsed = 0.0f;
    void Start()
    {
        path = new NavMeshPath();
        elapsed = 0.0f;
    }    void Update()
    {
        // Update the way to the goal every second.
        elapsed += Time.deltaTime;
        if (elapsed > 1.0f)
        {
            elapsed -= 1.0f;
            NavMesh.CalculatePath(transform.position, target.position, NavMesh.AllAreas, path);
        }
        for (int i = 0; i < path.corners.Length - 1; i++)
            Debug.DrawLine(path.corners[i], path.corners[i + 1], Color.red);
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| sourcePosition | The initial position of the path requested. |
| targetPosition | The final position of the path requested. |
| filter | A filter specifying the cost of NavMesh areas that can be passed when calculating a path. |
| path | The resulting path. |

### Returns

**bool** True if a either a complete or partial path is found and false otherwise.

### Description

Calculates a path between two positions mapped to the NavMesh, subject to the constraints and costs defined by the filter argument.
