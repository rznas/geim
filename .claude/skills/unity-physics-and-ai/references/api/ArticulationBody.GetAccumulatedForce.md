<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ArticulationBody.GetAccumulatedForce.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| step | The timestep of the next physics simulation. |

### Returns

**Vector3** Accumulated force expressed in ForceMode.Force.

### Description

Returns the force that the ArticulationBody has accumulated before the simulation step.

The accumulated force is reset during each physics simulation step.

```csharp
using UnityEngine;public class AddForceScript : MonoBehaviour
{
    private ArticulationBody articulationBody;    void Start()
    {
        articulationBody = GetComponent<ArticulationBody>();
        articulationBody.useGravity = false;
    }    private void FixedUpdate()
    {
        articulationBody.AddForce(Vector3.up * 10f, ForceMode.Impulse);
        var accumulatedForce = articulationBody.GetAccumulatedForce();
        articulationBody.AddForce(accumulatedForce * -1f, ForceMode.Force);
    }
}
```

In this example, the ArticulationBody doesn't move.
