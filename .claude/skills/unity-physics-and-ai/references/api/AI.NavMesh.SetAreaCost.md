<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMesh.SetAreaCost.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| areaIndex | Index of the area to set. |
| cost | New cost. |

### Description

Sets the cost for finding path over geometry of the area type on all agents.

This will replace any custom area costs on all agents, and set the default cost for new agents that are created after calling the function. The cost must be larger than 1.0.

Use GetAreaFromName to find the area index based on the name of the NavMesh area type.

```csharp
// ToggleWaterCost
using UnityEngine;
using UnityEngine.AI;public class ToggleWaterCost : MonoBehaviour
{
    void Update()
    {
        if (Input.anyKeyDown)
        {
            // Make the water area 10x more costly to traverse.
            NavMesh.SetAreaCost(NavMesh.GetAreaFromName("water"), 10.0f);
        }
    }
}
```

Additional resources: Areas and Costs to learn how to use different Area types.
