<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MeshColliderCookingOptions.CookForFasterSimulation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Toggle between cooking for faster simulation or faster cooking time.

When set, this runs some extra steps to guarantee the resulting mesh is optimal for run-time performance. This affects performance of the physics queries as well as contacts generation. If not set, produces the result as fast as possible. Consequently, the cooked MeshCollider might not be optimal.
