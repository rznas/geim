<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SimulationMode.Update.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this enumeration to instruct Unity to execute the physics simulation immediately after MonoBehaviour.Update.

Executing the physics simulation during MonoBehaviour.Update provides a less stable and deterministic physics simulation due to the unpredictable fluctuations in framerate that can arise. However, the physics simulation is always synchronized each frame, including contacts between Colliders. This mode doesn't require Rigidbody interpolation.

Additional resources: Physics.simulationMode.
