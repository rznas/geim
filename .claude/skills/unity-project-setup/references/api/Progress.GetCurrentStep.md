<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Progress.GetCurrentStep.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | The progress indicator's unique ID. |

### Returns

**int** The current step.

### Description

Gets the current step for a progress indicator.

Returns -1 if the indicator is not set to report progress in steps. To set the type of steps that the progress window displays, use Progress.SetStepLabel.

Additional resources: Progress.Report, Progress.GetTotalSteps, Progress.GetStepLabel, Progress.SetStepLabel.
