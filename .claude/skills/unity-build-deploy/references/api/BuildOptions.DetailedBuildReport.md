<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BuildOptions.DetailedBuildReport.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Generates detailed information in the BuildReport.

The BuildReport object returned by BuildPipeline.BuildPlayer will contain additional data about build times and contents. This might lead to slightly longer build time, typically by a few percents.

The following script example illustrates how to use `DetailedBuildReport` when building a Player. Create a project and add the script under Assets/Editor.

```csharp
using UnityEditor;
using UnityEngine;public class DetailedBuildReportExample : MonoBehaviour
{
    [MenuItem("Build/DetailedBuildReport example")]
    public static void MyBuild()
    {
        BuildPlayerOptions buildPlayerOptions = new BuildPlayerOptions();
        buildPlayerOptions.scenes = new[] { "Assets/scene.unity" };
        buildPlayerOptions.locationPathName = "DetailedReportBuild/MyGame.exe";
        buildPlayerOptions.target = BuildTarget.StandaloneWindows64;        buildPlayerOptions.options = BuildOptions.DetailedBuildReport;        var buildReport = BuildPipeline.BuildPlayer(buildPlayerOptions);
    }
}
```

1. Run the `Build/DetailedBuildReport` scripts example.
2. Access the information about the build process in the `buildReport` variable which you can process using the BuildReport API.
3. Refer to the [Build Report Inspector source script](https://github.com/Unity-Technologies/BuildReportInspector) to find illustrations on how to query the BuildReport API.
