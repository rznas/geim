<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshObstacle-center.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The center of the obstacle, measured in the object's local space.

**Note:** When a NavMeshObstacle is created the center is set to zero.

```csharp
// Default center is (0, 0, 0)
using UnityEngine;
using UnityEngine.AI;public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        NavMeshObstacle navMeshObstacle = gameObject.AddComponent<NavMeshObstacle>();
        Debug.Log(navMeshObstacle.center);
    }
}
```
