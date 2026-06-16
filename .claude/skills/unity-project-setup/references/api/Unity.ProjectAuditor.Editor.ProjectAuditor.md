<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.ProjectAuditor.Editor.ProjectAuditor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The ProjectAuditor class is responsible for auditing the Unity project.

### Properties

| Property | Description |
| --- | --- |
| callbackOrder | Returns the relative callback order for callbacks. Callbacks with lower values are called before ones with higher values. |

### Constructors

| Constructor | Description |
| --- | --- |
| ProjectAuditor | ProjectAuditor default constructor |

### Public Methods

| Method | Description |
| --- | --- |
| Audit | Performs static analysis of the project, using default parameters. |
| AuditAsync | Performs asynchronous static analysis of the project, using the supplied analysis parameters. Provide a callback to the OnCompleted Action in analysisParams to obtain the Report when analysis is completed. |
| OnPostprocessBuild | Callback function which is called after a build is completed. If UserPreferences.AnalyzeAfterBuild is true, performs a full audit and logs the number of issues found. |
