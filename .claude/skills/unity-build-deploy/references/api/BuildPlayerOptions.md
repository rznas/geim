<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BuildPlayerOptions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provide various options to control the behavior of BuildPipeline.BuildPlayer.

Additional resources: EditorBuildSettings, BuildPlayerWindow.DefaultBuildMethods.GetBuildPlayerOptions

```csharp
using UnityEditor;
using UnityEngine;public class BuildPlayerOptionsExample
{
    [MenuItem("Build/Log Build Settings")]
    public static void MyBuild()
    {
        // Log some of the current build options retrieved from the Build Settings Window
        BuildPlayerOptions buildPlayerOptions = BuildPlayerWindow.DefaultBuildMethods.GetBuildPlayerOptions(new BuildPlayerOptions());
        Debug.Log("BuildPlayerOptions\n"
            + "Scenes: " + string.Join(",", buildPlayerOptions.scenes) + "\n"
            + "Build location: " + buildPlayerOptions.locationPathName + "\n"
            + "Options: " + buildPlayerOptions.options + "\n"
            + "Target: " + buildPlayerOptions.target);
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| assetBundleManifestPath | The path to an manifest file describing all of the asset bundles used in the build (optional). |
| extraScriptingDefines | The additional preprocessor defines you can specify while compiling assemblies for the Player. These defines are appended to the existing Scripting Define Symbols list configured in the Player settings. |
| locationPathName | Specifies the path for the application to be built. |
| options | Additional BuildOptions, like whether to run the built player. |
| scenes | The Scenes to be included in the build. |
| subtarget | The Subtarget to build. |
| target | The BuildTarget to build. |
| targetGroup | The BuildTargetGroup to build. |
