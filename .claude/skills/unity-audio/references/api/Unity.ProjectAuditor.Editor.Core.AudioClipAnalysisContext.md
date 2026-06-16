<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.ProjectAuditor.Editor.Core.AudioClipAnalysisContext.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A context object passed by AudioClipModule to an AudioClipModuleAnalyzer's Analyze() method.

### Properties

| Property | Description |
| --- | --- |
| AudioClip | The AudioClip to be analyzed. |
| ImportedSize | The file size of the imported AudioClip. |
| Importer | The AudioImporter used to import the AudioClip to be analyzed. |
| Name | The name of an AudioClip in the project. |
| RuntimeSize | An estimate of the runtime memory footprint of this AudioClip, when it's playing. |
| SampleSettings | The AudioImporter's sample settings. |

### Inherited Members

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
