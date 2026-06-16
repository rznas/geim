<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SimulationMode.FixedUpdate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this enumeration to instruct Unity to execute the physics simulation immediately after the MonoBehaviour.FixedUpdate.

Executing the physics simulation during MonoBehaviour.FixedUpdate provides the most stable physics simulation, however Unity might render multiple frames between simulation updates. This might prevent synchronization of changes made per frame, including contacts between Colliders, with the physics simulation. This mode requires Rigidbody interpolation to provide smoother movement per frame where appropriate.

Additional resources: Physics.simulationMode.
