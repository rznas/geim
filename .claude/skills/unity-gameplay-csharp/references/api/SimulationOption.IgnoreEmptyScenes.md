<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SimulationOption.IgnoreEmptyScenes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Define whether or not to skip the simulation if there are no active physics objects in the scene.

Skips the SimulationStage.RunSimulation stage if there are no active Rigidbodies, ArticulationBodies, or Colliders in the scene. This option has no effect if the SimulationStage.RunSimulation stage is not specified in the PhysicsScene.RunSimulationStages call.
