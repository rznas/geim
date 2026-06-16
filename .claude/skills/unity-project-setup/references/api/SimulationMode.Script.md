<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SimulationMode.Script.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this enumeration to instruct Unity to execute the physics simulation manually when you call Physics.Simulate.

Executing the physics simulation in a script provides full control over when the simulation runs and the duration of simulation. Use this mode to emulate both SimulationMode.FixedUpdate and SimulationMode.Update, and any other custom time interval.

The stability and determinism of the simulation depends on when Unity executes the simulation. If the simulation runs each frame, then it is always synchronized, including contacts between Colliders. This means that Rigidbody interpolation is not required.

Additional resources: Physics.simulationMode.
