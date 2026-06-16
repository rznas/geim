<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimatorController.AddMotion.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| motion | The Motion that will be in the AnimatorState. |
| layerIndex | The layer where the Motion will be added. |

### Description

Utility function that creates a new state with the motion in it.

The state asset that is created is added as a sub asset of the state machine to which it is added. This function pushes an Undo operation.
