<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.WSA.GetVisualAssetsImage.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| type | UWP Logo type to retrieve the Asset name for. |
| scale | UWP Scale type to retrieve the Asset name for. |

### Returns

**string** Returns the asset path for the image currently set as the specified Logo/ If you have not set an image, returns an empty string.

### Description

Retrieves the Asset path for the image you set as the Universal Windows Platform package logo.

In the Editor, Unity displays this under **Tile section** in UWP Player Settings.
**Important:** Unity writes these settings to the package manifest when it builds Universal Windows Platform for the first time. Building into an existing Universal Windows Platform build folder does not update the package manifest and does not apply any changes.
