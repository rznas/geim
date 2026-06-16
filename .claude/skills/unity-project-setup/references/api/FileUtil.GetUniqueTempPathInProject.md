<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/FileUtil.GetUniqueTempPathInProject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns a unique path in the Temp folder within your current project.

The returned path is relative to the project folder.

The returned path is of a form `Temp/UnityTempFile-`*uniqueID*, where `uniqueID` is guaranteed to be unique over space and time.

You can use it to create temporary files/folders and be sure that you are not overriding somebody else's files, plus you don't have to keep track of the unique IDs yourself.

```csharp
using UnityEngine;
using UnityEditor;public class GetUniqueTempPath : MonoBehaviour
{
    [MenuItem("Example/Get Unique Temp Path")]
    static void GetUniqueTempPathInProject()
    {
        Debug.Log(FileUtil.GetUniqueTempPathInProject());
    }
}
```
