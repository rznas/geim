<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.IPostGenerateGradleAndroidProject.OnPostGenerateGradleAndroidProject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | The path to the root of the Unity library Gradle project. Note: when exporting the project, this parameter holds the path to the Unity library in the folder specified for export. |

### Description

Implement this function to receive a callback after the Android Gradle project is generated and before the build process begins.

Use this function to modify the generated Gradle files before the build process begins.

**Note**: To compile the script for this function as an Editor script and prevent any compilation errors related to the `UnityEditor.Android` namespace, use one of these methods:

- Place the script in the `Assets/Editor` folder of your project.
- Create an assembly definition file that allows you to place the script in any folder of your project.

```csharp
using UnityEditor;
using UnityEditor.Android;
using UnityEngine;class MyCustomBuildProcessor : IPostGenerateGradleAndroidProject
{
    public int callbackOrder { get { return 0; } }
    public void OnPostGenerateGradleAndroidProject(string path)
    {
        Debug.Log("MyCustomBuildProcessor.OnPostGenerateGradleAndroidProject at path " + path);
    }
}
```
