<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Progress.Cancel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | The progress indicator's unique ID. |

### Returns

**bool** True if the associated task is cancelled, false if it cannot be cancelled.

### Description

Cancels a runnning progress indicator, and invokes the cancel callback for the associated task.

You can only call this method if a cancel callback has been registered for the specified **id**.
 Additional resources: Progress.RegisterCancelCallback, Progress.UnregisterCancelCallback.
