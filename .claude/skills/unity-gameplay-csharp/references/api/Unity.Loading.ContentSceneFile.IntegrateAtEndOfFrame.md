<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Loading.ContentSceneFile.IntegrateAtEndOfFrame.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Calling this will cause the scene to integrate at the end of the frame.

It's unnecessary to call this if you set the Unity.Loading.ContentSceneParameters.AutoIntegrate property to true. This should only be called when the ContentSceneFile.Status is SceneLoadingStatus.WaitingForIntegrate.
