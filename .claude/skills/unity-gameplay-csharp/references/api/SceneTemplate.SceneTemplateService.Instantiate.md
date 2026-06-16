<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneTemplate.SceneTemplateService.Instantiate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| sceneTemplate | A Scene template Asset that contains the information required to instantiate the Scene. |
| loadAdditively | Specifies whether the new Scene is created additively in the currently loaded Scene. |
| newSceneOutputPath | The path to the new Scene created from the template. This is set only when the SceneTemplateAsset has cloneable dependencies, because in that case, the new Scene must be be saved on disk. |

### Returns

**InstantiationResult** The new Scene and its SceneTemplateAsset counterpart.

### Description

Instantiates a new Scene from a template.
