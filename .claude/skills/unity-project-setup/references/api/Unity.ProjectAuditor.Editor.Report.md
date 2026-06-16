<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.ProjectAuditor.Editor.Report.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Report contains a list of all issues found by ProjectAuditor.

### Properties

| Property | Description |
| --- | --- |
| DisplayName | A name to display along with the Report, configurable by the user. |
| NumTotalIssues | The total number of ProjectIssues included in this report. |
| ReportVersion | File format version of the Report (read-only). |

### Public Methods

| Method | Description |
| --- | --- |
| FindByCategory | find all issues for a specific IssueCategory. |
| FindByDescriptorId | Find all Issues that match a specific ID. |
| GetAllIssues | Gets a read-only collection of all of the ProjectIssues included in the report. |
| GetNumIssues | Get total number of issues for a specific IssueCategory. |
| HasCategory | Checks whether the Report includes analysis for a given IssueCategory. |
| IsValid | Check whether all issues in the report are valid. |
| Save | Save the Report as a JSON file. |

### Static Methods

| Method | Description |
| --- | --- |
| Load | Load a Report from a JSON file at the specified path. |
