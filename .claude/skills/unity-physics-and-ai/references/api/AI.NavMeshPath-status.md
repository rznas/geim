<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshPath-status.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Status of the path. (Read Only)

This reports whether the path reaches the target, reaches part of the way to the target, or is just not valid. Among other reasons, a path returns NavMeshPathStatus.PathInvalid if it can't determine the nearest polygon of the source or target position, or if the path would have been a partial result, but the point closest to the target on the final polygon could not be determined. These situations are rare, and may arise if the navigation mesh is being changed while a path is being calculated.
