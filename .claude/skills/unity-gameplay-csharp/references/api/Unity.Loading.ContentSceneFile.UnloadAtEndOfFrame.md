<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Loading.ContentSceneFile.UnloadAtEndOfFrame.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** True if successful. False if the scene is not in a state that can be unloaded.

### Description

Will trigger the scene to unload at the end of the frame.

This must be called on a ContentSceneFile even if the status is SceneLoadingStatus.Failed in order to release internal resources.

The call will fail if the scene is not in an unloadable state. For example, it is actively being loaded or unloaded.
