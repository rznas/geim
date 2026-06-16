<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Cloth-clothSolverFrequency.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Number of cloth solver iterations per second.

The solver frequency is specified as iterations per second. A solver frequency value of 240 corresponds to 4 iterations per frame at 60 frames per second. In general, simulation will become more accurate if higher solver frequency value is used. However, simulation time grows roughly linearly with solver frequency. Typically this value is between 120 and 300.
