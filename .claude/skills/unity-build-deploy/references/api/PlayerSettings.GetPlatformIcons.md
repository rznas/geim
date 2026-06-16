<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.GetPlatformIcons.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| buildTarget | The NamedBuildTarget. |
| kind | The PlatformIconKind. |

### Description

Gets the list of available icon slots for the specified build target and kind. The BuildTargetGroup overload is marked for deprecation in the future; use the NamedBuildTarget overload.

Returns the PlatformIcon slot array for the given build target and kind. Slot count is fixed per platform and kind. Assign textures to each slot using PlatformIcon.SetTexture or PlatformIcon.SetTextures. Pass the same array to PlayerSettings.SetPlatformIcons.

Additional resources: PlayerSettings.SetPlatformIcons, PlayerSettings.GetSupportedIconKinds, PlayerSettings.SetIcons.
