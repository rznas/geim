<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SimulationMode2D.Update.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this enumeration to specify to Unity that it should execute the physics simulation immediately after MonoBehaviour.Update.

Executing the physics simulation during MonoBehaviour.Update provides a less stable and deterministic physics simulation due to the unpredictable fluctuations in framerate that can arise. However, the physics simulation is always synchronized each frame, including contacts between Collider2D. Using this mode, Rigidbody2D interpolation is not required as the simulation is updated per-frame.

Additional resources: Physics2D.simulationMode.
