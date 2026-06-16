<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SpringJoint-tolerance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The maximum allowed error between the current spring length and the length defined by minDistance and maxDistance.

If the tolerance is set very high the solver might not run and the spring would effectively not exist.

If the tolerance is set close to zero very short spring lengths are possible, but at the increased cost of running the solver more often.
