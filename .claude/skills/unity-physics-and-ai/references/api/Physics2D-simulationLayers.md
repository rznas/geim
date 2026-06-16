<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics2D-simulationLayers.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Rigidbody2D and Collider2D layers to simulate.

By default, All Layers are simulated, however if you specify layers in this property then only the Rigidbody2D on those layers will be simulated. Along with this, only contacts for Collider2D on the specified layer(s) will be handled. Finally, only joints or effectors on the specified layer(s) will be handled.

This property is only used when the Physics2D.SimulationMode is in one of the automatic simulation modes i.e. SimulationMode2D.FixedUpdate or SimulationMode2D.Update. When using SimulationMode2D.Script and calling Physics2D.Simulate, the simulation layers are pass as an argument.

Additional resources: Physics2D.simulationMode and Physics2D.Simulate.
