<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SimulationMode2D.FixedUpdate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this enumeration to specify to Unity that it should execute the physics simulation immediately after the MonoBehaviour.FixedUpdate.

Executing the physics simulation during MonoBehaviour.FixedUpdate provides the most stable physics simulation however, Unity may render multiple frames between simulation updates. This means that changes made per-frame may not be synchronized with the physics simulation including contacts between Collider2D. In this mode Rigidbody2D interpolation should be used to provide smoother movement per-frame where appropriate.

Additional resources: Physics2D.simulationMode.
