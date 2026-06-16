<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.GetIcons.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| buildTarget | The NamedBuildTarget. |
| kind | The IconKind. |

### Description

Returns the list of assigned icons for the specified build target.

Unity enables you to specify multiple icon textures for each platform.

Each texture in the returned array corresponds to an entry in the list of icon sizes returned by PlayerSettings.GetIconSizes. By default, `GetIcons` returns all icons for a platform unless you specify an IconKind value. Only iOS supports icons which have a different kind than IconKind.Application. On Android, this method returns only Legacy launcher icons. Use PlayerSettings.GetPlatformIcons for Adaptive or Round icons.

Additional resources: PlayerSettings.GetIconSizes, PlayerSettings.GetPlatformIcons, PlayerSettings.SetIcons, PlayerSettings.GetIconsForTargetGroup (deprecated overload).
