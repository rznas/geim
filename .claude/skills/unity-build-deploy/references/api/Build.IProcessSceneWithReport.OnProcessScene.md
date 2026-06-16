<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.IProcessSceneWithReport.OnProcessScene.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| scene | The current scene being processed. |
| report | A report containing information about the current build. When this callback is invoked for scene loading during Play mode, this parameter is null. |

### Description

Implement this method to receive a callback for each scene during the build.

Unity invokes this callback during Player and AssetBundle builds, and also when a scene is reloaded while entering Play mode. Use BuildPipeline.isBuildingPlayer to determine in which context the callback is called.

 This callback supports editing the provided scene to prepare it for a Player build or entering Play mode, and reading assets. For example, you can add or remove references to project assets in that scene.

 This callback doesn't support modifying the state of other assets. Use it to modify only the provided scene.

 Keep implementations deterministic. Avoid random values, timestamps, or external changing data sources. For more information, refer to Deterministic builds.

 Apply BuildCallbackVersionAttribute to callback types and increment the version whenever the callback logic changes to help Unity invalidate cached scene processing results when needed.

 For more information about build callbacks, refer to Use build callbacks.

```csharp
using UnityEditor;
using UnityEditor.Build;
using UnityEditor.Build.Reporting;
using UnityEngine;[BuildCallbackVersion(1)]
class MyCustomBuildProcessor : IProcessSceneWithReport
{
    public int callbackOrder { get { return 0; } }
    public void OnProcessScene(UnityEngine.SceneManagement.Scene scene, BuildReport report)
    {
        Debug.Log("MyCustomBuildProcessor.OnProcessScene " + scene.name);
    }
}
```
