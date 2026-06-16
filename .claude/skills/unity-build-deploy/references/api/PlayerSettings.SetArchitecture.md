<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.SetArchitecture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| buildTarget | The NamedBuildTarget. |
| architecture | The architecture as an integer. |

### Description

Sets the target CPU architecture for the build target.

This setting applies to iOS, tvOS, and visionOS platforms only. Other platforms use their own architecture APIs.

**Architecture values:** 
 `0` — 32-bit ARMv7 (deprecated) 
 `1` — 64-bit ARM64 (default) 
 `2` — Universal (ARMv7 and ARM64)

BuildTargetGroup is marked for deprecation in the future. Use NamedBuildTarget instead.

Additional resources: PlayerSettings.Android.targetArchitectures (Android), EditorUserBuildSettings.SetPlatformSettings (Windows, macOS, and Linux).
