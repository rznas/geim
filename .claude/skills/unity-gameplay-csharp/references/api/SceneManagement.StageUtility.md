<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.StageUtility.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Utility methods related to stages.

### Static Methods

| Method | Description |
| --- | --- |
| GetCurrentStage | The current Stage can either be the MainStage or any other opened Stage, visualized in the Scene view as the last breadcrumb in the breadcrumb bar. |
| GetCurrentStageHandle | Get the current stage being edited. |
| GetMainStage | Get the MainStage object. This object is always available. |
| GetMainStageHandle | Get the main stage which contains all the currently open regular Scenes. |
| GetStage | Get the Stage object that contains the input GameObject or Scene. |
| GetStageHandle | Get the stage in which the given GameObject exists. |
| GoBackToPreviousStage | Navigate the Editor to the previous stage. |
| GoToMainStage | Navigate the Editor to the main stage. |
| GoToStage | Navigates the Editor to the specified stage. |
| IsGameObjectRenderedByCamera | Is the given GameObject rendered by the given Camera? |
| IsGameObjectRenderedByCameraAndPartOfEditableScene | Specifies whether the given Camera currently renders the given GameObject and the GameObject is also part of an editable scene. |
| PlaceGameObjectInCurrentStage | Place the given GameObject in the current stage being edited. |
