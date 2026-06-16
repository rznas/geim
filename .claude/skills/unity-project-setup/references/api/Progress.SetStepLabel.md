<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Progress.SetStepLabel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | The progress indicator's unique ID. |
| label | The steps label. |

### Description

Sets the label that displays a progress indicator's steps.

This label displays a progress indicator's reported steps. For example, a progress indicator that reports "Jobs" might display "11/25 Jobs" and a progress reporting "Assets" might display "8/20 Assets". To report progress in steps, use Progress.Report with the steps variant.

Additional resources: Progress.GetStepLabel, Progress.GetCurrentStep, Progress.GetTotalSteps, Progress.Item.stepLabel, Progress.Item.SetStepLabel.
