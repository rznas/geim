<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.Profile.BuildProfile.AddComponent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| objectToAdd | ScriptableObject instance to add. |

### Description

Adds a ScriptableObject to the build profile as a sub-asset. Only one instance per type can be embedded within a build profile.

**Note**: This function is restricted to ScriptableObject types and cannot be used for all settings visible in the **Build Profiles** window. To add built-in settings such as PlayerSettings, GraphicsSettings, and QualitySettings, use the **Build Profiles** window.
