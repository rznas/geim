<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsScene.RunSimulationStages.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| step | The time to advance physics by. |
| stages | An enum to specify which stages to run. |
| options | A flag enum to specify any additional simulation options. |

### Description

Runs specified physics simulation stages on this physics scene.

Stages are processed in this order:

1. SimulationStage.PrepareSimulation
2. SimulationStage.RunSimulation
3. SimulationStage.PublishSimulationResults

`step` argument can be any number if SimulationStage.RunSimulation stage is not specified.

Additional resources: PhysicsScene.Simulate, Physics.Simulate.
