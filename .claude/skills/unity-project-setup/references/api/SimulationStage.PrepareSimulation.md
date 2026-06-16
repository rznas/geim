<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SimulationStage.PrepareSimulation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This stage prepares the physics scene for simulation.

Specifically, this stage:

- Displays any pending errors from the physics system.
- Calls Physics.SyncTransforms to apply any pending Transform changes to the physics system.
- Stores interpolation poses.
