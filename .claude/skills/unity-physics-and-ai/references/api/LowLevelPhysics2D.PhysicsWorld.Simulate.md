<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsWorld.Simulate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| deltaTime | The amount of time to forward simulate the world. |

### Description

Simulate the world. The world should must have its PhysicsWorld.simulationType set to PhysicsWorld.SimulationType.Script for this to work.

### Parameters

| Parameter | Description |
| --- | --- |
| worlds | The worlds to forward simulate. |
| deltaTime | The amount of time to forward simulate the world. |

### Description

Simulate a batch of worlds. The worlds can be simulated concurrently depending on the setting of PhysicsLowLevelSettings2D.concurrentSimulations. The worlds in the batch must have their PhysicsWorld.simulationType set to PhysicsWorld.SimulationType.Script.
