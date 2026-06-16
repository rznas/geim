<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.IPreprocessBuildWithReport.OnPreprocessBuild.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| report | A report containing information about the build, such as its target platform and output path. |

### Description

Implement this method to receive a callback before the build is started.

This method is replaced by Build.IPostprocessBuildWithContext.OnPreprocessBuild, which works for AssetBundle builds as well. This callback is invoked during Player builds, but not during AssetBundle builds. 
 
 Additional resources: IPostprocessBuildWithReport, BuildPlayerProcessor, BuildPipeline.BuildPlayer

```csharp
using UnityEditor;
using UnityEditor.Build;
using UnityEditor.Build.Reporting;
using UnityEngine;class MyCustomBuildProcessor : IPreprocessBuildWithReport
{
    public int callbackOrder { get { return 0; } }
    public void OnPreprocessBuild(BuildReport report)
    {
        Debug.Log("MyCustomBuildProcessor.OnPreprocessBuild for target " + report.summary.platform + " at path " + report.summary.outputPath);
    }
}
```
