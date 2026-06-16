<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshAgent.SamplePathPosition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| areaMask | A bitfield mask specifying which NavMesh areas can be passed when tracing the path. |
| maxDistance | Terminate scanning the path at this distance. |
| hit | Holds the properties of the resulting location. |

### Returns

**bool** True if terminated before reaching the position at `maxDistance`, false otherwise.

### Description

Sample a position along the current path.

This function looks ahead the specified `maxDistance` along the current path, up to the third corner. It returns details of the mesh at that position in a NavMeshHit object. You can use this to check the type of surface that lies ahead before the character gets there. For example, characters could raise their guns above their heads if they are about to wade through water.

 If the path sampling terminates on an outer edge, `hit.mask` is 0. If the path sampling terminates at an area not specified by `areaMask`, `hit.mask` contains the area mask of the blocking polygon. If the sampling reaches the end of the path, or the limit at the path's third corner, `hit.mask` contains the area mask at that position on the NavMesh.

```csharp
using UnityEngine;
using UnityEngine.AI;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public Transform target;
    private NavMeshAgent agent;
    private int waterMask;
    void Start()
    {
        agent = GetComponent<NavMeshAgent>();
        waterMask = 1 << NavMesh.GetAreaFromName("Water");
        agent.SetDestination(target.position);
    }    void Update()
    {
        NavMeshHit hit;        // Check all areas one length unit ahead.
        if (!agent.SamplePathPosition(NavMesh.AllAreas, 1.0F, out hit))
            if ((hit.mask & waterMask) != 0)
            {
                // Water detected along the path...
            }
    }
}
```
