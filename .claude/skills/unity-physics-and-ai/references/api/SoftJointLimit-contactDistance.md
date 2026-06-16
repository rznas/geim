<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SoftJointLimit-contactDistance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Determines how far ahead in space the solver can "see" the joint limit.

Distance inside the limit value at which the limit will be considered to be active by the solver. 
For translational joints the unit is meters. 
For rotational joints the unit is degrees. 
Setting this low can cause jittering, but might run faster. 
Setting this high can reduce jittering, but might run slower. Jointed objects will still fall asleep correctly. 
**0 = use defaults**


Pipeline: .
