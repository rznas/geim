<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics.Simulate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| step | The time to advance physics by. |

### Description

Simulate physics in the Scene.

Call this to simulate physics manually when the simulation mode is set to Script. Simulation includes all the stages of collision detection, rigidbody and joints integration, and filing of the physics callbacks (contact, trigger and joints). Calling Physics.Simulate does not cause FixedUpdate to be called. MonoBehaviour.FixedUpdate will still be called at the rate defined by Time.fixedDeltaTime whether simulation mode is set to Script or not, and regardless of when you call Physics.Simulate.

Note that if you pass framerate-dependent step values (such as Time.deltaTime) to the physics engine, your simulation will be non-deterministic because of the unpredictable fluctuations in framerate that can arise.

To achieve deterministic physics results, you should pass a fixed step value to Physics.Simulate every time you call it. Usually, `step` should be a small positive number. Using `step` values greater than 0.03 is likely to produce inaccurate results.

Additional resources: Physics.simulationMode, SimulationMode.

Here is an example of a basic simulation that implements what's being done in the SimulationMode.FixedUpdate simulation mode (excluding Time.maximumDeltaTime).

```csharp
using UnityEngine;public class BasicSimulation : MonoBehaviour
{
    private float timer;    void Update()
    {
        if (Physics.simulationMode != SimulationMode.Script)
            return; // do nothing if the automatic simulation is enabled        timer += Time.deltaTime;        // Catch up with the game time.
        // Advance the physics simulation in portions of Time.fixedDeltaTime
        // Note that generally, we don't want to pass variable delta to Simulate as that leads to unstable results.
        while (timer >= Time.fixedDeltaTime)
        {
            timer -= Time.fixedDeltaTime;
            Physics.Simulate(Time.fixedDeltaTime);
        }        // Here you can access the transforms state right after the simulation, if needed
    }
}
```
