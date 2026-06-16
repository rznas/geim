<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.WSA-lastRequiredScene.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The scene index number from the Scenes in Build list for the last scene that must be present in a **Streaming Install** build.

In the Editor, Unity displays this under **Packaging** in UWP Player Settings. 
For an application to start, Unity requires all scenes in the Build Settings, up to this index, to be present on the device. If your application requires every scene in the list before the application can start, set this value to the index of the last scene in the list (scene_count - 1). 
A scene may only use assets from another scene with a *smaller* index value. This means that the ordering of scenes within a streaming install is important because it determines the order in which Unity installs. Your application can't share assets in scenes lower down the list (larger index value) with scenes higher in the list (smaller index value).

**Note**: By default, Unity disables Streaming Install and ignores this value. Set supportStreamingInstall to `true` or check the **Streaming Install** option in PlayerSettings to enable this feature.
