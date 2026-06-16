<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Progress.GetRemainingTime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | The progress indicator's unique ID. |

### Returns

**long** The number of seconds remaining.

### Description

Gets a progress indicator's remaining time, in seconds.

If the remaining time is not set manually, Unity computes it automatically. Unity computes a progress indicator's remaining time based on the average of the last five updates of its current running time, and progress. This helps prevent large fluctuations in the displayed value, and results in smoother progress reporting.
