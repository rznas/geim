<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.SceneManager.MergeScenes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| sourceScene | The Scene that will be merged into the destination Scene. |
| destinationScene | Existing Scene to merge the source Scene into. |

### Description

This will merge the source Scene into the destinationScene.

This function merges the contents of the source Scene into the destination Scene, and deletes the source Scene. All GameObjects at the root of the source Scene are moved to the root of the destination Scene.
 **Note:** This function is destructive: The source Scene will be destroyed once the merge has been completed.
