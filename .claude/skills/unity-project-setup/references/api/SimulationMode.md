<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SimulationMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A selection of modes that control when Unity executes the physics simulation.

Additional resources: Physics.simulationMode.

```csharp
// SimulationMode.FixedUpdate is the default setting in Unity.
// Attach this script to a gameObject and enter runtime mode.using UnityEngine;public class ManualPhysicsSimulation : MonoBehaviour
{
    void Start()
    {
        Debug.Log("Current Physics.simulationMode: " + Physics.simulationMode);
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| FixedUpdate | Use this enumeration to instruct Unity to execute the physics simulation immediately after the MonoBehaviour.FixedUpdate. |
| Update | Use this enumeration to instruct Unity to execute the physics simulation immediately after MonoBehaviour.Update. |
| Script | Use this enumeration to instruct Unity to execute the physics simulation manually when you call Physics.Simulate. |
