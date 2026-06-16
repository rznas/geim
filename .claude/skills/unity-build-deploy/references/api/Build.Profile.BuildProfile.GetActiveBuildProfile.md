<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.Profile.BuildProfile.GetActiveBuildProfile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**BuildProfile** The active build profile. Returns null when a platform profile is active.

### Description

Gets the active build profile.

This method retrieves the active build profile from the `Build Profiles` pane only. The method returns null if a platform profile from the `Platforms` pane is active instead.

Additional resources: Platform profile.

```csharp
using UnityEditor;
using UnityEditor.Build.Profile;public static class Builder
{
    [MenuItem("Build/Build Active Profile")]
    public static void BuildActiveProfile()
    {
        var options = new BuildPlayerWithProfileOptions
        {
            buildProfile = BuildProfile.GetActiveBuildProfile(),
            locationPathName = "Builds/MyBuild"
        };        BuildPipeline.BuildPlayer(options);
    }    [MenuItem("Build/Set macOS Build Profile")]
    public static void SetActiveBuildProfile()
    {
        var specificBuildProfile = AssetDatabase.LoadAssetAtPath<BuildProfile>(
            "Assets/Settings/Build Profiles/macOS.asset"
        );
        BuildProfile.SetActiveBuildProfile(specificBuildProfile);
    }
}
```
