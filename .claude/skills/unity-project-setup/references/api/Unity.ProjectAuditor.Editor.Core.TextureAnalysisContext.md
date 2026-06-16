<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.ProjectAuditor.Editor.Core.TextureAnalysisContext.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A context object passed by a TextureModule to a TextureModuleAnalyzer's Analyze() method.

### Properties

| Property | Description |
| --- | --- |
| Importer | The TextureImporter used to import the texture to be analyzed. |
| ImporterPlatformSettings | The texture importer's platform settings, matching the target analysis platform. |
| Name | The name of a texture asset in the project |
| Size | An estimate of the texture's runtime memory footprint. |
| Texture | The texture asset to be analyzed. |

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
