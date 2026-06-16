<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera.ResetTransparencySortSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Resets this Camera's transparency sort settings to the default. Default transparency settings are taken from GraphicsSettings instead of directly from this Camera.

The rendering pipeline will, by default, take the transparency sort settings from GraphicsSettings. This is very convenient and caters to most use cases. However, if you have the need to alter the settings per Camera, you may do so with the Camera's APIs.

Once Camera.transparencySortMode or Camera.transparencySortAxis are called from the script, the rendering pipeline ignores the settings in the GraphicsSettings and takes the settings directly from the Camera.

Calling this method causes the rendering pipeline to refer to the settings in GraphicsSettings instead of this Camera.

This works the same for SceneView Cameras as well.
