<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.IsBuildable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| ext | The file extension. **Note**: A leading `.` is not necessary but is accepted. |

### Returns

**bool** Returns true if the file can be built.

### Description

Checks if a file with the given extension can be built by Xcode.

**Note**: Returns true if the extension is not known by PBXProject.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_IsBuildable  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {
        // Specify file extension you want to check
        string extension = "txt";        // Check if the file extension can be built by Xcode
        bool isBuildable = PBXProject.IsBuildable(extension);
        Debug.Log("Extension " + extension + " " + (isBuildable ? "is" : "is not") + " buildable by Xcode");
    }
}
```
