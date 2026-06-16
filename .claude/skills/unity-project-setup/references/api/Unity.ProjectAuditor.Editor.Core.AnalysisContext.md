<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.ProjectAuditor.Editor.Core.AnalysisContext.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Base class for a context object passed by a Module to an Analyzer's Analyze() method.

AnalysisContext provides information to the Analyze() method which is used to decide which issues to report. It also provides helper methods to build Issues or Insights.

### Properties

| Property | Description |
| --- | --- |
| Params | The AnalysisParams object that was passed to (or created by) the ProjectAuditor's Audit() method. |

### Public Methods

| Method | Description |
| --- | --- |
| CreateInsight | Create a ReportItemBuilder for an Insight: A ReportItem collected for informational purposes. |
| CreateIssue | Create a ReportItemBuilder for an Issue: a potential problem in the project, with an actionable recommendation to resolve it. |
| IsDescriptorEnabled | Checks whether a given Descriptor is enabled for the current analysis. |
