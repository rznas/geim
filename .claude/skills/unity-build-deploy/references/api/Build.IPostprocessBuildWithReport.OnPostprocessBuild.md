<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.IPostprocessBuildWithReport.OnPostprocessBuild.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| report | A BuildReport containing information about the build, such as the target platform and output path. |

### Description

Implement this function to receive a callback after the build is complete.

This method is replaced by IPostprocessBuildWithContext.OnPostprocessBuild, which works for AssetBundle builds as well. This callback is invoked during Player builds, but not during AssetBundle builds. If the build stops early, due to a failure or cancellation, then the callback is not invoked. 
 
 Additional resources: BuildPipeline.BuildPlayer, IPreprocessBuildWithReport

```csharp
using UnityEditor;
using UnityEditor.Build;
using UnityEditor.Build.Reporting;
using UnityEngine;class MyCustomBuildProcessor : IPostprocessBuildWithReport
{
    public int callbackOrder { get { return 0; } }
    public void OnPostprocessBuild(BuildReport report)
    {
        Debug.Log("MyCustomBuildProcessor.OnPostprocessBuild for target " + report.summary.platform + " at path " + report.summary.outputPath);
    }
}
```
