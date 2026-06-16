<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BuildPipeline.BuildPlayer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| buildPlayerOptions | Provide various options to control the behavior of BuildPipeline.BuildPlayer. |

### Returns

**BuildReport** A BuildReport object containing build process information.

### Description

Builds a player.

Use this function to programatically create a build of your project.

Calling this method will invalidate any variables in the editor script that reference GameObjects, so they will need to be reacquired after the call.

Scripts can run at strategic points during the build by implementing one of the supported callback interfaces, for example BuildPlayerProcessor, IPreprocessBuildWithContext, IProcessSceneWithReport and IPostprocessBuildWithContext.

Note: Be aware that changes to scripting symbols only take effect at the next domain reload, when scripts are recompiled.

This means if you make changes to the defined scripting symbols via code using PlayerSettings.SetDefineSymbolsForGroup without a domain reload before calling this function, those changes won't take effect.

It also means that the built-in scripting symbols defined for the current active target platform (such as UNITY_STANDALONE_WIN, or UNITY_ANDROID) remain in place even if you try to build for a different target platform, which can result in the wrong code being compiled into your build.

Additional resources: BuildPlayerWindow.DefaultBuildMethods.BuildPlayer.

```csharp
using UnityEditor;
using UnityEngine;
using UnityEditor.Build.Reporting;// Output the build size or a failure depending on BuildPlayer.public class BuildPlayerExample
{
    [MenuItem("Build/Build iOS")]
    public static void MyBuild()
    {
        BuildPlayerOptions buildPlayerOptions = new BuildPlayerOptions();
        buildPlayerOptions.scenes = new[] { "Assets/Scene1.unity", "Assets/Scene2.unity" };
        buildPlayerOptions.locationPathName = "iOSBuild";
        buildPlayerOptions.target = BuildTarget.iOS;
        buildPlayerOptions.options = BuildOptions.None;        BuildReport report = BuildPipeline.BuildPlayer(buildPlayerOptions);
        BuildSummary summary = report.summary;        if (summary.result == BuildResult.Succeeded)
        {
            Debug.Log("Build succeeded: " + summary.totalSize + " bytes");
        }        if (summary.result == BuildResult.Failed)
        {
            Debug.Log("Build failed");
        }
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| buildPlayerWithProfileOptions | Provide various options to control the behavior of BuildPipeline.BuildPlayer when using a build profile. |

### Returns

**BuildReport** A BuildReport object containing build process information.

### Description

Builds a player from a specific build profile.

```csharp
using UnityEditor;
using UnityEditor.Build.Reporting;
using UnityEditor.Build.Profile;
using UnityEngine;public class BuildPlayerWithBuildProfileExample
{
    [MenuItem("Build/Build iOS Demo")]
    public static void MyBuild()
    {
        BuildProfile buildProfile = AssetDatabase.LoadAssetAtPath<BuildProfile>("Assets/Settings/Build Profiles/iOSDemo.asset");
        BuildPlayerWithProfileOptions options = new BuildPlayerWithProfileOptions()
        {
            buildProfile = buildProfile,
            locationPathName = "iOSDemoBuild",
            options = BuildOptions.None,
        };        BuildReport report = BuildPipeline.BuildPlayer(options);
        BuildSummary summary = report.summary;        // Output the build size or a failure depending on BuildPlayer.
        if (summary.result == BuildResult.Succeeded)
        {
            Debug.Log("Build succeeded: " + summary.totalSize + " bytes");
        }        if (summary.result == BuildResult.Failed)
        {
            Debug.Log("Build failed");
        }
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| levels | The scenes to include in the build. If empty, the build includes only the current open scene. Paths are relative to the project folder, for example `Assets/MyLevels/MyScene.unity`. |
| locationPathName | The path where the application will be built. For information on the platform extensions to include in the path, refer to Build path requirements for target platforms. |
| target | The BuildTarget to build. |
| options | Additional BuildOptions, like whether to run the built player. |

### Returns

**BuildReport** A BuildReport object containing build process information.

### Description

Builds a Player. These overloads are still supported, but will be replaced. Please use BuildPlayer(BuildPlayerOptions buildPlayerOptions) and BuildPlayer(BuildPlayerWithProfileOptions buildPlayerWithProfileOptions) instead.
