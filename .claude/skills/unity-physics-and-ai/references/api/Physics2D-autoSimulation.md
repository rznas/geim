<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics2D-autoSimulation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Set whether the physics should be simulated automatically or not.

By default, physics is updated every Time.fixedDeltaTime during the play mode. It happens automatically as part of the regular game loop.

However, there are cases where being able to advance physics manually is needed. One particular example example could be networked physics where rewinding time back and applying all the player input is required up on receiving data from the authoritative server.

To control the physics simulation manually, disable the automatic simulation first and then use Physics2D.Simulate to advance time. Note that MonoBehaviour.FixedUpdate will still be called at the rate defined by Time.fixedDeltaTime, but the physics simulation will no longer be advanced automatically.

Additional resources: Physics2D.Simulate.
