<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.ProjectAuditor.Editor.ReportItem.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Describes an issue that ProjectAuditor reports in the Unity project.

### Properties

| Property | Description |
| --- | --- |
| Category | This issue's category (read-only). |
| CustomProperties | Custom properties. See the "moduleMetadata" section of an exported Report JSON file for information on the formats and meanings of the custom properties for each IssueCategory. |
| Description | Project issue Description (read-only). |
| FileExtension | File extension of the file that contains this issue. |
| Filename | Name of the file that contains this issue. |
| Id | An unique identifier for the issue descriptor (read-only). |
| Line | Line in the file that contains this issue. |
| Location | Location of the Insight or Issue (read-only). |
| LogLevel | Log level. |
| RelativePath | Relative path of the file that contains this issue. |
| Severity | Issue-specific Severity (read-only). |

### Public Methods

| Method | Description |
| --- | --- |
| IsIssue | Checks whether this ReportItem represents an Issue. |
| IsValid | Checks whether this issue is valid. |
