<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.IPostBuildPlayerScriptDLLs.OnPostBuildPlayerScriptDLLs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| report | A report containing information about the build, such as its target platform and output path. |

### Description

Implement this interface to receive a callback just after the player scripts have been compiled.

You can implement this if you need to read or patch managed Assemblies for players being built. You can get assembly locations from the files property of the `report` parameter. Note that implementing this callback will cause builds to run slower, as assemblies need to be copied to an intermediate location, and is not recommended for best performance.

Additional resources: BuildPlayerProcessor, IFilterBuildAssemblies, IUnityLinkerProcessor, IPreprocessBuildWithContext

```csharp
using UnityEditor;
using UnityEditor.Build;
using UnityEditor.Build.Reporting;
using UnityEngine;class MyCustomBuildProcessor : IPostBuildPlayerScriptDLLs
{
    public int callbackOrder { get { return 0; } }
    public void OnPostBuildPlayerScriptDLLs(BuildReport report)
    {
        Debug.Log("MyCustomBuildProcessor.OnPostBuildPlayerScriptDLLs for target " + report.summary.platform + " at path " + report.summary.outputPath);
    }
}
```
