<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ArticulationBody.GetAccumulatedTorque.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| step | The timestep of the next physics simulation. |

### Returns

**Vector3** Accumulated torque expressed in ForceMode.Force.

### Description

Returns the torque that the ArticulationBody has accumulated before the simulation step.

The accumulated torque is reset during each physics simulation step.

```csharp
using UnityEngine;public class AddTorqueScript : MonoBehaviour
{
    private ArticulationBody articulationBody;    void Start()
    {
        articulationBody = GetComponent<ArticulationBody>();
        articulationBody.useGravity = false;
    }    private void FixedUpdate()
    {
        articulationBody.AddTorque(Vector3.right * 10f, ForceMode.Impulse);
        var accumulatedTorque = articulationBody.GetAccumulatedTorque();
        articulationBody.AddTorque(accumulatedTorque * -1f, ForceMode.Force);
    }
}
```

In this example, the angular velocity of the ArticulationBody is 0.
