<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.Profile.BuildProfile.CreateComponent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**T** ScriptableObject type to instantiate.

### Description

Creates a new instance of a given scriptable object and adds it as a sub-asset to the build profile. Only one instance per type can be embedded within a build profile.

**Note**: This function is restricted to ScriptableObject types and cannot be used for all settings visible in the **Build Profiles** window. To create built-in settings such as PlayerSettings, GraphicsSettings, and QualitySettings, use the **Build Profiles** window.
