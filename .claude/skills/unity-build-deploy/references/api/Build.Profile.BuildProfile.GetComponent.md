<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.Profile.BuildProfile.GetComponent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**T** Settings component type to fetch. Expects a ScriptableObject implementation or PlayerSettings.

### Description

Returns a component of type `T`. For PlayerSettings, returns the global fallback if no PlayerSettings component is found. Returns null if the component isn't available.

**Note**: This function is restricted to ScriptableObject types or PlayerSettings.
