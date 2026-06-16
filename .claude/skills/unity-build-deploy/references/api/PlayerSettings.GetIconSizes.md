<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.GetIconSizes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| buildTarget | The NamedBuildTarget. |

### Description

Returns a list of icon sizes for the specified platform.

Unity enables you to specify multiple icon textures for each platform.

Use this function to get the icon sizes for a specified platform. Each returned size includes the icon's width and height in pixels. By default, PlayerSettings.GetIcons returns all icons for a platform unless you specify an IconKind value. Only iOS supports icons which have a different kind than IconKind.Application.

Additional resources: PlayerSettings.GetIconSizesForTargetGroup (deprecated overload).
