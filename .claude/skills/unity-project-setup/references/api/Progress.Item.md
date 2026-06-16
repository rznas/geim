<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Progress.Item.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A data structure that provides information about a progress indicator.

### Properties

| Property | Description |
| --- | --- |
| cancellable | Returns true if the progress indicator's associated event can be canceled. |
| currentStep | Returns the current step for this progress indicator. |
| description | Returns the progress indicator's description. |
| elapsedTime | Returns the number of seconds that the progress indicator has been running for. |
| endTime | Returns the time when the progress indicator ended. |
| exists | Checks whether the progress indicator exists. |
| finished | Returns true if the progress indicator is finished, but not removed. |
| id | Returns the progress indicator's unique identifier. |
| indefinite | Returns true if the progress indicator is indefinite. |
| name | Returns the progress indicator's name. |
| options | Returns the option flags used to start the progress indicator. |
| parentId | Returns the unique ID of the progress indicator's parent, or -1 if the progress indicator is not a child of another progress indicator. |
| pausable | Returns true if the progress indicator's task can be paused. |
| paused | Returns true if the progress indicator is paused. |
| priority | Returns the progress indicator's priority. |
| progress | Returns the progress value of a progress indicator's associated task. |
| remainingTime | Returns this progress indicator's remaining time to completion. |
| responding | Returns true if progress is ongoing, false if the progress indicator has not received any progress report for more than 5 seconds. |
| running | Returns true if the progress indicator is running and active. |
| startTime | Returns the time when the progress indicator started. |
| status | Returns the progress indicator's status. |
| stepLabel | Returns the label that displays the progress indicator's steps. |
| timeDisplayMode | Returns the progress indicator's time display mode. |
| totalSteps | Returns the total number of steps, from start to finish, for this progress indicator. |
| updateTime | Returns the last time the progress indicator was updated. |

### Public Methods

| Method | Description |
| --- | --- |
| Cancel | Cancels a running progress indicator. |
| ClearRemainingTime | Resets the computation of the progress indicator's remaining time. |
| Finish | Marks the progress indicator as finished. |
| Pause | Pauses a running progress indicator. |
| RegisterCancelCallback | Registers a callback that is called when the user cancels a running progress indicator's associated task. |
| RegisterPauseCallback | Registers a callback that is called when a user pauses a running progress indicator's task. |
| Remove | Finishes and removes an active progress indicator. |
| Report | Reports the progress indicator's current status. |
| Resume | Resumes a paused progress indicator. |
| SetDescription | Sets the progress indicator's description. To clear the description pass null. |
| SetPriority | Sets the progress indicator's priority. |
| SetRemainingTime | Sets the progress indicator's remaining time, in seconds. |
| SetStepLabel | Sets the label that displays the progress indicator's steps. |
| SetTimeDisplayMode | Set a progress indicator's time display mode. |
| UnregisterCancelCallback | Unregisters a previously registered progress cancellation callback. |
| UnregisterPauseCallback | Unregisters a previously registered progress pause callback. |
