<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.IPreprocessBuildWithContext.OnPreprocessBuild.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| ctx | A context containing information about the build, such as its build report. |

### Description

Implement this method to receive a callback before the build is started.

This callback is invoked during Player builds and AssetBundle builds. 
 
 Additional resources: IPostprocessBuildWithContext, BuildPlayerProcessor, BuildPipeline.BuildPlayer, BuildPipeline.BuildAssetBundles.

```csharp
using UnityEditor;
using UnityEditor.Build;
using UnityEngine;
using UnityEditor.Build.Reporting;class MyCustomBuildProcessor : IPreprocessBuildWithContext
{
    public int callbackOrder { get { return 0; } }
    public void OnPreprocessBuild(BuildCallbackContext ctx)
    {
        if (ctx.IsContentOnlyBuild)
            Debug.Log("AssetBundle build: MyCustomBuildProcessor.OnPreprocessBuild for target " + ctx.Report.summary.platform + " at path " + ctx.Report.summary.outputPath);
        else if (ctx.IsPlayerBuild)
            Debug.Log("Player build: MyCustomBuildProcessor.OnPreprocessBuild for target " + ctx.Report.summary.platform + " at path " + ctx.Report.summary.outputPath);
    }
}
```
