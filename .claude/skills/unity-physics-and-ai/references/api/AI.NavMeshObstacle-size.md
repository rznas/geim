<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshObstacle-size.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The size of the obstacle, measured in the object's local space.

The size will be scaled by the transform's scale.

```csharp
using UnityEngine;
using UnityEngine.AI;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        NavMeshObstacle obstacle = GetComponent<NavMeshObstacle>();
        Mesh mesh = GetComponent<MeshFilter>().mesh;
        obstacle.shape = NavMeshObstacleShape.Box;
        obstacle.size = mesh.bounds.size;
    }
}
```
