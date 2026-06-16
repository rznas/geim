<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Progress.Pause.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | The progress indicator's unique ID. |

### Returns

**bool** True if the task is paused, false if it cannot be paused.

### Description

Pauses a runnning progress indicator, and invokes the pause callback for its task.

You can only call this method if a pause callback has been registered for the specified **id**.
 Additional resources: Progress.RegisterPauseCallback, Progress.UnregisterPauseCallback, Progress.Resume.
