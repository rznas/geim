<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.IPostprocessBuildWithContext.OnPostprocessBuild.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| ctx | A context containing information about the build, such as its build report. |

### Description

Implement this function to receive a callback after the build is complete.

This callback is invoked during Player builds or AssetBundle builds. This callback is invoked even when the build stops early due to a failure or cancellation. However it will not be invoked if initial validation checks prevent the build from starting. 
 
 Additional resources: BuildPipeline.BuildPlayer, BuildPipeline.BuildAssetBundles, IPreprocessBuildWithContext

```csharp
using UnityEditor;
using UnityEditor.Build;
using UnityEngine;
using UnityEditor.Build.Reporting;class MyCustomBuildProcessor : IPostprocessBuildWithContext
{
    public int callbackOrder { get { return 0; } }
    public void OnPostprocessBuild(BuildCallbackContext ctx)
    {
        if (ctx.IsContentOnlyBuild)
            Debug.Log("AssetBundle build: MyCustomBuildProcessor.OnPostprocessBuild for target " + ctx.Report.summary.platform + " at path " + ctx.Report.summary.outputPath);
        else if (ctx.IsPlayerBuild)
            Debug.Log("Player build: MyCustomBuildProcessor.OnPostprocessBuild for target " + ctx.Report.summary.platform + " at path " + ctx.Report.summary.outputPath);
    }
}
```
