<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.Profile.BuildProfile.RemoveComponent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| objectToRemove | Specific instance to remove. Must already be part of the current profile. |

### Description

Removes a component of type `T` from a given build profile.

**Note**: This function is restricted to ScriptableObject types and cannot be used for all settings visible in the **Build Profiles** window. To remove built-in settings such as PlayerSettings, GraphicsSettings, and QualitySettings, use the **Build Profiles** window.
