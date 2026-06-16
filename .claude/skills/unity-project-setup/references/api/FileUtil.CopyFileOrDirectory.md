<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/FileUtil.CopyFileOrDirectory.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Copies a file or a directory.

This function's path can be relative to the project root folder or be an absolute path.

All file separators should be forward ones "/".

Make sure to include the name of the files or directories at the end of the `dest` argument.

```csharp
using UnityEngine;
using UnityEditor;public class CopyFile : MonoBehaviour
{
    [MenuItem("Example/Copy Something")]
    static void CopySomething()
    {
        FileUtil.CopyFileOrDirectory("sourcepath/YourFileOrFolder", "destpath/YourFileOrFolder");
    }
}
```
