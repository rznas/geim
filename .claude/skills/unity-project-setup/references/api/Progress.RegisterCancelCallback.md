<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Progress.RegisterCancelCallback.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | The progress indicator's unique ID. |
| callback | The function called when a request to cancel a progress indicator's associated task is made. The function returns true if it actually cancelled the task. |

### Description

Registers a callback that is called when the user requests to cancel a running progress indicator's associated task.

Additional resources: Progress.Cancel, Progress.UnregisterCancelCallback.
