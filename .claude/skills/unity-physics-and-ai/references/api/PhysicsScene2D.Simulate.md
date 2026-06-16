<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsScene2D.Simulate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| deltaTime | The time to advance physics by. |
| simulationLayers | The Rigidbody2D and Collider2D layers to simulate. |

### Returns

**bool** Whether the simulation was run or not. Running the simulation during physics callbacks will always fail.

### Description

Simulate physics associated with this PhysicsScene.

Calling PhysicsScene2D.Simulate will perform a single simulation step, simulating physics over the specified `step` time.

By default, All Layers are simulated, however if you specify layers then only the Rigidbody2D will be simulated. Along with this, only contacts for Collider2D on the specified layer(s) will be handled. Finally, only joints or effectors on the specified layer(s) will be handled.

You can call PhysicsScene2D.Simulate in the Editor outside of play mode, however caution is advised as this will cause the simulation to move GameObjects that have an attached Rigidbody2D component. When simulating in the Editor outside of play mode, a full simulation occurs for all physics components including Rigidbody2D, Collider2D, Joint2D and Effector2D, and contacts are generated. However, contacts are not reported via the standard script callbacks. This is a safety measure to prevent callbacks from deleting objects in the Scene, which is not an undoable operation.

**NOTE:** Calling Physics2D.Simulate does not cause Unity to call FixedUpdate. Unity still calls MonoBehaviour.FixedUpdate at the rate defined by Time.fixedDeltaTime whether automatic simulation is on or off, and regardless of when you call Physics2D.Simulate. Also, if you pass framerate-dependent step values (such as Time.deltaTime) to the physics engine, your simulation will be less deterministic because of the unpredictable fluctuations in framerate that can arise. To achieve more deterministic physics results, you should pass a fixed step value to Physics2D.Simulate every time you call it.

Additional resources: Physics2D.simulationMode and Physics2D.Simulate.

Here is an example of a basic simulation that implements what's being done in the automatic simulation mode.

```csharp
using UnityEngine;public class BasicSimulation : MonoBehaviour
{
    public PhysicsScene physicsScene;
    private float timer;    void Update()
    {
        if (!physicsScene.IsValid())
            return; // do nothing if the physics Scene is not valid.        timer += Time.deltaTime;        // Catch up with the game time.
        // Advance the physics simulation in portions of Time.fixedDeltaTime
        // Note that generally, we don't want to pass variable delta to Simulate as that leads to unstable results.
        while (timer >= Time.fixedDeltaTime)
        {
            timer -= Time.fixedDeltaTime;
            physicsScene.Simulate(Time.fixedDeltaTime);
        }        // Here you can access the transforms state right after the simulation, if needed...
    }
}
```
