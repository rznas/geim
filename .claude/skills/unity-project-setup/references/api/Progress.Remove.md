<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Progress.Remove.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | The progress indicator's unique ID. |
| forceSynchronous | When you set this parameter to true it forces this method to remove the progress indicator synchronously. |

### Returns

**int** -1 if the progress indicator is removed. Otherwise, returns the progress indicator's ID.

### Description

Finishes and removes an active progress indicator.

The progress indicator is removed on the next application tick unless it is synchronous (see Synchronous). To force this method to remove the progress indicator synchronously, set the "forceSynchronous" parameter to true.
