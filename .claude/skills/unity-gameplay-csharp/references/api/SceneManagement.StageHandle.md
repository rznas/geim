<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.StageHandle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Struct that represents a stage handle.

A stage is an editing context which includes a collection of Scenes. The main stage contains all the currently open regular Scenes, while a Prefab stage contains a preview Scene used solely for editing the Prefab in.

The breadcrumbs which are shown in the Scene view when in Prefab Mode each represent a stage.

### Public Methods

| Method | Description |
| --- | --- |
| Contains | Does the stage contain the given GameObject? |
| FindComponentOfType | Returns the first active loaded object of the given type. |
| FindComponentsOfType | Returns a list of all active loaded objects of the given type. |
| IsValid | Is this stage handle valid? |
