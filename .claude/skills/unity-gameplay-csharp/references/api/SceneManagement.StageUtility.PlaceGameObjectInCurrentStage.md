<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.StageUtility.PlaceGameObjectInCurrentStage.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| gameObject | The GameObject to be placed in the current stage. |

### Description

Place the given GameObject in the current stage being edited.

When creating new GameObjects, they are always placed in the main stage to begin with. This is because the GameObject constructor doesn’t know if it’s called by game logic which should always place objects in the main stage which is the game, or by editor logic which should normally place objects in the current stage being edited.

Call this method whenever you have created objects from editor tooling, and the objects should appear in the current stage being edited.
