<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneTemplate.SceneTemplatePipelineAdapter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An adapter that implements all the functions of ISceneTemplatePipeline for easier usage. Use it to partially override a ISceneTemplatePipeline.

### Public Methods

| Method | Description |
| --- | --- |
| AfterTemplateInstantiation | An event called after the Scene template is instantiated, and while the new Scene is still loaded. |
| BeforeTemplateInstantiation | An event called before the Scene template is instantiated. |
| IsValidTemplateForInstantiation | An event called before the New Scene dialog is displayed to determine whether this template is available in the dialog. |
