<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMesh.GetAreaFromName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| areaName | Name of the area to look up. |

### Returns

**int** Index if the specified area name exists, or -1 if no area type has the specified name.

### Description

Returns the area index for a named NavMesh area type.

```csharp
// NearestPointOnWater
using UnityEngine;
using UnityEngine.AI;public class NearestPointOnWater : MonoBehaviour
{
    void Update()
    {
        // Find the nearest point on water.
        int waterMask = 1 << NavMesh.GetAreaFromName("water");
        NavMeshHit hit;
        if (NavMesh.SamplePosition(transform.position, out hit, 2.0f, waterMask))
        {
            Debug.DrawRay(hit.position, Vector3.up, Color.blue);
        }
    }
}
```

Additional resources: Areas and Costs to learn how to use different Area types.
