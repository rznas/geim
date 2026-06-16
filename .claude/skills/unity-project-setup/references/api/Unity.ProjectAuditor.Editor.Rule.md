<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.ProjectAuditor.Editor.Rule.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a rule which modifies the Severity of an Issue ReportItem or all of the ProjectIssues that share a Descriptor.

### Properties

| Property | Description |
| --- | --- |
| Filter | An optional location filter representing a ReportItem's location. If specified, this Rule applies to a single ReportItem. If the string is null or empty, this Rule applies to every ReportItem matching the Id. |
| Id | The Descriptor ID |
| Severity | The Severity level to apply to the issue(s) represented by this Rule |

### Public Methods

| Method | Description |
| --- | --- |
| GetHashCode | Get the hashed integer representation of the Rule. |
