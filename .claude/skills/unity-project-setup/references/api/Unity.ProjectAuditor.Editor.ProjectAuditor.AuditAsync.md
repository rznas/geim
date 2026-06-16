<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.ProjectAuditor.Editor.ProjectAuditor.AuditAsync.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| analysisParams | Parameters to control the audit process |
| progress | Progress bar, if applicable |

### Description

Performs asynchronous static analysis of the project, using the supplied analysis parameters. Provide a callback to the `OnCompleted` Action in analysisParams to obtain the Report when analysis is completed.
