<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Progress.Item.Report.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| newProgress | A new progress value between 0 and 1. |
| newDescription | An updated description of the progress indicator. If the the progress status has not changed, or you do not set a description, this is null. To clear the current progress description, pass an empty string such as *""*. |
| newCurrentStep | An updated current step. |
| newTotalSteps | An updated total number of steps. |

### Description

Reports the progress indicator's current status.

When you report in steps, you can set the label for the steps with Progress.Item.SetStepLabel. Note: Changes are applied on the next application tick unless you call this function from the main thread using a synchronous progress indicator (see Synchronous).

Additional resources: Progress.Report, Progress.Item.progress, Progress.Item.description, Progress.Item.SetDescription.
