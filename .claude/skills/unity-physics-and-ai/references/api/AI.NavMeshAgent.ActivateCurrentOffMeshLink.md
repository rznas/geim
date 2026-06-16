<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshAgent.ActivateCurrentOffMeshLink.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| activated | Is the link activated? |

### Description

Enables or disables the current off-mesh link.

This function activates or deactivates the off-mesh link where the agent is currently waiting. This is useful for granting access to newly discovered areas of the game world or simulating the creation or removal of an obstacle to an area.

```csharp
using UnityEngine;
using UnityEngine.AI;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    private NavMeshAgent agent;
    void Start() {
        agent = GetComponent<NavMeshAgent>();
    }
    void OpenDiscoveredArea(Hashtable areasDiscovered) {
        if (agent.isOnOffMeshLink)
            if (areasDiscovered.ContainsKey(agent.currentOffMeshLinkData.offMeshLink.name))
                agent.ActivateCurrentOffMeshLink(true);
    }
}
```
