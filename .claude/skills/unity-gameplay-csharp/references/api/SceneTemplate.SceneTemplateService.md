<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneTemplate.SceneTemplateService.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A utility class that manages SceneTemplateAsset instantiation.

### Static Methods

| Method | Description |
| --- | --- |
| CreateSceneTemplate | Creates a new Scene template at a specific path. The template is not bound to a Scene. |
| CreateTemplateFromScene | Creates a new Scene template bound to a specific Scene. All of the template Scene's dependencies are extracted and set to be referenced. |
| Instantiate | Instantiates a new Scene from a template. |

### Events

| Event | Description |
| --- | --- |
| newSceneTemplateInstantiated | Events fired after a Scene template is instantiated. |
| newSceneTemplateInstantiating | Events fired before a Scene template is instantiated. |

### Delegates

| Delegate | Description |
| --- | --- |
| NewTemplateInstantiated | An event called after a Scene template is instantiated. |
| NewTemplateInstantiating | An event called before a Scene template is instantiated. |
