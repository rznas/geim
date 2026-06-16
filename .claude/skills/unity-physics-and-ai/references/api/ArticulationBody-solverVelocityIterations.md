<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ArticulationBody-solverVelocityIterations.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The solverVelocityIterations affects how accurately articulation body joints and collision contacts are resolved during bounce.

Increasing this value will result in higher accuracy of the resulting exit velocity after an articulation body bounce. You can try to increase this value if you are experiencing issues with jointed articulation bodies moving too much after collisions. Overrides Physics.defaultSolverVelocityIterations. Must be positive.

 Additional resources: ArticulationBody.solverIterations.
