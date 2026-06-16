<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.ProjectAuditor.Editor.Core.AnalysisContext.CreateIssue.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| category | Issue category |
| id | Descriptor ID |
| messageArgs | Arguments to be used in the message formatting |

### Returns

**ReportItemBuilder** The ReportItemBuilder, constructed with the specified category, descriptor ID and message arguments

### Description

Create a ReportItemBuilder for an Issue: a potential problem in the project, with an actionable recommendation to resolve it.
