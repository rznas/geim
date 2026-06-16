<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.WSA.SetVisualAssetsImage.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| image | Asset path for the image to use as the specified Logo. |
| type | UWP Logo type to assign an image for. |
| scale | UWP Scale type to assign an image for. |

### Description

Sets the image to use as the Universal Windows Platform package logo.

In the Editor, Unity displays this under **Tile section** in UWP Player Settings.
**Important:** Unity writes these settings to the package manifest when it builds Universal Windows Platform for the first time. Building into an existing Universal Windows Platform build folder does not update the package manifest and does not apply any changes.
