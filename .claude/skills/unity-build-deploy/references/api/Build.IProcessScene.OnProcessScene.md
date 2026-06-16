<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.IProcessScene.OnProcessScene.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| scene | The scene Unity is currently processing during the build. |

### Description

Implement this method to receive a callback for each scene during the build.

```csharp
using UnityEditor;
using UnityEditor.Build;
using UnityEngine;class MyCustomBuildProcessor : IProcessScene
{
    public int callbackOrder { get { return 0; } }
    public void OnProcessScene(UnityEngine.SceneManagement.Scene scene)
    {
        Debug.Log("MyCustomBuildProcessor.OnProcessScene " + scene.name);
    }
}
```
