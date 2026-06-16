<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Progress.GetTotalSteps.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | The progress indicator's unique ID. |

### Returns

**int** The number of steps.

### Description

Gets the total number of steps, from start to finish, for a progress indicator.

Returns -1 if you don't use steps to report progress on this indicator. To set the type of steps that the progress window displays, use Progress.SetStepLabel.

Additional resources: Progress.Report, Progress.GetCurrentStep, Progress.GetStepLabel, Progress.SetStepLabel.
