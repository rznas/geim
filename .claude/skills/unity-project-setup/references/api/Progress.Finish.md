<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Progress.Finish.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | The progress indicator's unique ID. |
| status | The status of the associated task when the progress indicator finishes. Indicates whether the task succeeded, failed, or was canceled. |

### Description

Marks the progress indicator as finished.

The system removes finished progress indicators unless they are sticky. Sticky progress indicators display progress information even after their associated tasks are complete. The system does not remove them automatically.
