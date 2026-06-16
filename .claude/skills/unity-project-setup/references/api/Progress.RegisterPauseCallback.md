<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Progress.RegisterPauseCallback.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | The progress indicator's unique ID. |
| callback | This function is called when a request to pause or resume the progress indicator's task is made. It takes a boolean parameter that specifies whether the task needs to pause or resume. When the value is true, the task needs to pause. When the value is false, the task needs to resume. The function returns true if it actually performed the requested action. |

### Description

Registers a callback that is called when the user requests to pause or resume a running progress indicator's task.

Additional resources: Progress.Pause, Progress.Resume, Progress.UnregisterPauseCallback.
