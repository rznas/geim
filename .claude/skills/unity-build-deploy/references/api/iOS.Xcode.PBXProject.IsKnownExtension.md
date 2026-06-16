<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.IsKnownExtension.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| ext | The file extension. The leading `.` is not necessary but is accepted. |

### Returns

**bool** Returns true of the extension is known.

### Description

Checks if files with the given extension are known to PBXProject.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_IsKnownExtension  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {
        // Specify file extension you want to check
        string extension = "txt";        // Check if the file extension is known to PBXProject
        bool isKnown = PBXProject.IsKnownExtension(extension);
        Debug.Log("Extension " + extension + " " + (isKnown ? "is" : "is not") + " known to PBXProject");
    }
}
```
