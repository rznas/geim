<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsQuery.TimeOfImpactResult.State.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Describes the time-of-impact state.

### Properties

| Property | Description |
| --- | --- |
| Unknown | The query encountered an error and returned an unknown result. This should not happen unless a serious issue was encountered. |
| Failed | The query failed to find a good result. The query ran out of iterations finding an impact. |
| Overlapped | The shapes were initially overlapped. |
| Hit | An impact was detected. |
| Separated | No impact was detected during the interval. |
