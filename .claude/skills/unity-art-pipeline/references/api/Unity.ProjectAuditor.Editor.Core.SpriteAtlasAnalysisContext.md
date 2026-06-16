<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.ProjectAuditor.Editor.Core.SpriteAtlasAnalysisContext.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A context object passed by SpriteAtlasModule to a SpriteAtlasModuleAnalyzer's Analyze() method.

### Properties

| Property | Description |
| --- | --- |
| AssetPath | The path to a Sprite Atlas asset in the project. |
| EmptySpacePercentage | The empty space percentage of the sprite atlas. |
| Name | The name of a sprite atlas asset in the project |
| SpriteAtlas | The spriteatlas asset to be analyzed. |

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
