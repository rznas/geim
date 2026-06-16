<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMesh.AddNavMeshData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| navMeshData | Contains the data for the navmesh. |

### Returns

**NavMeshDataInstance** Representing the added navmesh.

### Description

Adds the specified NavMeshData to the game.

This makes the NavMesh data available for agents and NavMesh queries. Returns an instance for later removing the NavMesh data from the runtime.

The instance returned will be valid unless the NavMesh data could not be added - e.g. due to running out of memory or navmesh data being loaded from a corrupted file.

Additional resources: NavMeshDataInstance, RemoveNavMeshData.

### Parameters

| Parameter | Description |
| --- | --- |
| navMeshData | Contains the data for the navmesh. |
| position | Translate the navmesh to this position. |
| rotation | Rotate the navmesh to this orientation. |

### Returns

**NavMeshDataInstance** Representing the added navmesh.

### Description

Adds the specified NavMeshData to the game.

This function is similar to AddNavMeshData above, but the position and rotation specified is applied in addition to the position and rotation where the NavMesh data was baked.

```csharp
using UnityEngine;
using UnityEngine.AI;class Example : MonoBehaviour
{
    public NavMeshData data;
    NavMeshDataInstance[] instances = new NavMeshDataInstance[2];    public void OnEnable()
    {
        // Add an instance of navmesh data
        instances[0] = NavMesh.AddNavMeshData(data);        // Add another instance of the same navmesh data - displaced and rotated
        instances[1] = NavMesh.AddNavMeshData(data, new Vector3(0, 5, 0), Quaternion.AngleAxis(90, Vector3.up));
    }    public void OnDisable()
    {
        instances[0].Remove();
        instances[1].Remove();
    }
}
```
