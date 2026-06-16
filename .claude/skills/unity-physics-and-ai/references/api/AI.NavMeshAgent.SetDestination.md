<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshAgent.SetDestination.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| target | The target point to navigate to. |

### Returns

**bool** True if the destination was requested successfully, otherwise false.

### Description

Sets or updates the destination thus triggering the calculation for a new path.

Note that the path may not become available until after a few frames later. While the path is being computed, pathPending will be true. If a valid path becomes available then the agent will resume movement.

```csharp
using UnityEngine;
using UnityEngine.AI;public class Example : MonoBehaviour
{
    NavMeshAgent myNavMeshAgent;
    void Start()
    {
        myNavMeshAgent = GetComponent<NavMeshAgent>();
    }    void Update()
    {
        if (Input.GetMouseButtonDown(0))
        {
            SetDestinationToMousePosition();
        }
    }    void SetDestinationToMousePosition()
    {
        RaycastHit hit;
        Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
        if (Physics.Raycast(ray, out hit))
        {
            myNavMeshAgent.SetDestination(hit.point);
        }
    }
}
```
