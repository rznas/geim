<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.SceneManager.MoveGameObjectsToScene.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| instanceIDs | GameObjects by instance ID to move. |
| scene | Scene to move into. |

### Description

Move multiple GameObjects, represented by a NativeArray of instance IDs, from their current Scene to a new Scene.

You can only move root GameObjects from one Scene to another. This means the GameObject to move must not be a child of any other GameObject in its Scene. This only works on GameObjects being moved to a Scene that is already loaded (additive). If you want to load single Scenes, make sure to use DontDestroyOnLoad on the GameObject you would like to move to a new Scene, otherwise Unity deletes it when it loads a new Scene.
