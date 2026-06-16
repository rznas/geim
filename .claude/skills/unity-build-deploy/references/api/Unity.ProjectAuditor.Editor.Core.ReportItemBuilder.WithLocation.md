<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.ProjectAuditor.Editor.Core.ReportItemBuilder.WithLocation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| location | Location object describing where the specific item was found within the project |

### Returns

**ReportItemBuilder** The ReportItemBuilder object with the Location added

### Description

Adds a Location to the ReportItem being built.

### Parameters

| Parameter | Description |
| --- | --- |
| path | File path within the project describing where the specific item was found |
| line | A line number within the file |

### Returns

**ReportItemBuilder** The ReportItemBuilder object with the Location added

### Description

Constructs a Location object and adds it to the ReportItem being built.
