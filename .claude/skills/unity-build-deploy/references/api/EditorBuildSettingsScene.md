<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorBuildSettingsScene.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents entries in the Scenes list, as displayed in the Build Profiles window.

This class contains the path of a Scene and an enabled flag that indicates whether the Scene is enabled in the Build Profiles window or not.

You can use this class in combination with EditorBuildSettings.scenes to populate the list of Scenes to include in the build via script. This is useful when you create custom editor scripts to automate your build pipeline.

See EditorBuildSettings.scenes for an example script. Additional resources: BuildPipeline.BuildPlayer.

### Properties

| Property | Description |
| --- | --- |
| enabled | Whether this Scene is enabled for inclusion in the build. |
| path | The file path of the Scene. |
