<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.ProjectAuditor.Editor.Core.ReportItemBuilder.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides methods to construct a ReportItem object for a Report.

### Constructors

| Constructor | Description |
| --- | --- |
| ReportItemBuilder | Constructor for an object to build ReportItems representing Issues. |

### Public Methods

| Method | Description |
| --- | --- |
| WithCustomProperties | Initialize all custom properties to the same value. |
| WithDescription | Adds a description string to the ReportItem being built. |
| WithLocation | Adds a Location to the ReportItem being built. |
| WithLogLevel | Adds a LogLevel to the ReportItem being built. |
| WithSeverity | Adds a Severity to the ReportItem being built. |

### Operators

| Operator | Description |
| --- | --- |
| ReportItem | Implicit conversion of ReportItemBuilder to ReportItem. |
