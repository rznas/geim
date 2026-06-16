<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/FileUtil.DeleteFileOrDirectory.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Deletes a file or a directory given a path.

This function's path is relative to the project root folder but it can also accept absolute paths.

All file separators should be forward ones "/" (Unix style).

```csharp
using UnityEngine;
using UnityEditor;public class DeleteFile : MonoBehaviour
{
    [MenuItem("Example/Delete Something")]
    static void DeleteSomething()
    {
        FileUtil.DeleteFileOrDirectory("yourPath/YourFileOrFolder");
    }
}
```
