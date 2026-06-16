<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Loading.SceneLoadingStatus.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The loading status of a ContentSceneFile. This is accessed by ContentSceneFile.Status.

### Properties

| Property | Description |
| --- | --- |
| InProgress | The scene load is in progress. |
| WaitingForIntegrate | The asynchronous part of the scene loading is complete. You can now safely call ContentSceneFile.IntegrateAtEndOfFrame when you are ready to activate the scene. |
| WillIntegrateNextFrame | The scene will integrate at the end of the current frame. |
| Complete | The scene has been loaded and integrated successfully. |
| Failed | A failure occured in the scene loading process. See log for details. Be sure to still call ContentSceneFile.UnloadAtEndOfFrame to release internal resources. |
