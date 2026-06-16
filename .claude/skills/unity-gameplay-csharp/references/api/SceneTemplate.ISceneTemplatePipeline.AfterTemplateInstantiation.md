<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneTemplate.ISceneTemplatePipeline.AfterTemplateInstantiation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| sceneTemplateAsset | The Scene template asset to instantiate. |
| scene | The newly created Scene. |
| isAdditive | When set to true, the new Scene is created in additive mode. |
| sceneName | The path to the newly created Scene. If the template you instantiated does not have any cloneable dependencies, this can be empty. |

### Description

An event called after the Scene template is instantiated, and while the new scene is still loaded.
