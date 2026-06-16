<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Progress.SetRemainingTime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | The progress indicator's unique ID. |
| seconds | The progress indicator's remaining time, in seconds. |

### Description

Sets the progress indicator's remaining time, in seconds.

Call this function to set the progress indicator's remaining time. When this function is called, the system stops automatically computing the estimated remaining time. To use automatic computation again, you need to call the function Progress.ClearRemainingTime.
