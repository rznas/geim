<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshAgent-nextPosition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gets or sets the simulation position of the navmesh agent.

The position vector is in world space coordinates and units.

The nextPosition is coupled to Transform.position. In the default case the navmesh agent's Transform position will match the internal simulation position at the time the script Update function is called. This coupling can be turned on and off by setting updatePosition.

When updatePosition is true, the Transform.position reflects the simulated position, when false the position of the transform and the navmesh agent is not synchronized, and you'll see a difference between the two in general. When updatePosition is turned back on, the Transform.position will be immediately move to match nextPosition.

By setting nextPosition you can directly control where the internal agent position should be. The agent will be moved towards the position, but is constrained by the navmesh connectivity and boundaries. As such it will be useful only if the positions are continuously updated and assessed. Additional resources: Warp for teleporting a navmesh agent.

```csharp
using UnityEngine;
using UnityEngine.AI;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        // Update the transform position explicitly in the OnAnimatorMove callback
        GetComponent<NavMeshAgent>().updatePosition = false;
    }    void OnAnimatorMove()
    {
        transform.position = GetComponent<NavMeshAgent>().nextPosition;
    }
}
```

Additionally it can be useful to control the agent position directly - especially if the GO transform is controlled by something else - e.g. animator, physics, scripted or input.

```csharp
using UnityEngine;
using UnityEngine.AI;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public bool agentIsControlledByOther;
    void Update()
    {
        var agent = GetComponent<NavMeshAgent>();
        agent.updatePosition = !agentIsControlledByOther;
        if (agentIsControlledByOther)
        {
            GetComponent<NavMeshAgent>().nextPosition = transform.position;
        }
    }
}
```

Additional resources: Move for moving the agent with a relative position.
