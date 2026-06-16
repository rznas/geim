<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SimulationMode2D.Script.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this enumeration to specify to Unity that it should execute the physics simulation manually when you call Physics2D.Simulate.

Executing the physics simulation in a script provides full control over when the simulation runs and the time over which it runs. Using this mode, you can emulate both SimulationMode2D.FixedUpdate and SimulationMode2D.Update along with any other custom time interval.

The stability and determinism of the simulation depends on when Unity executes the simulation. If the simulation runs each frame, then it is always synchronized, including contacts between Collider2Ds. This means that Rigidbody2D interpolation is not required.

Additional resources: Physics2D.simulationMode.
