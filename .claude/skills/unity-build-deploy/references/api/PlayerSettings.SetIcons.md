<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.SetIcons.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| buildTarget | The NamedBuildTarget. |

### Description

Assigns a list of icons for the specified platform.

Most platforms support viewing icons in multiple sizes so Unity lets you specify multiple icon textures for each platform. Unity only assigns the list of icons if the following is true:

- The list is the same length as the list of icon sizes returned by PlayerSettings.GetIconSizes.
- The Editor supports the specified platform.

Only iOS supports icons which have an IconKind other than IconKind.Application. Unity copies Icons assigned to IconKind.Application, IconKind.Settings, IconKind.Notification, and IconKind.Spotlight to the appropriate slots in the generated Xcode project. 

 On Android, `SetIcons` affects only `Legacy` launcher icons as IconKind values map to `Legacy`. For Adaptive or Round icons, use PlayerSettings.GetPlatformIcons and PlayerSettings.SetPlatformIcons. Calling the method with an empty Texture2D array removes all icons currently set for IconKind.

Additional resources: PlayerSettings.GetPlatformIcons, PlayerSettings.SetPlatformIcons, PlayerSettings.GetIconSizes, PlayerSettings.SetIconsForTargetGroup (deprecated overload).
