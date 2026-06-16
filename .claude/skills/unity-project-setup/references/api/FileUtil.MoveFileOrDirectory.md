<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/FileUtil.MoveFileOrDirectory.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Moves a file or a directory from a given path to another path.

This function's path is relative to the project root folder but it can also accept absolute paths.

All file separators should be forward ones "/".

Make sure to include the name of the files or directories at the end of the `dest` argument.

```csharp
using UnityEngine;
using UnityEditor;public class MoveFile : MonoBehaviour
{
    [MenuItem("Example/Move Something")]
    static void MoveSomething()
    {
        FileUtil.MoveFileOrDirectory("sourcepath/YourFileOrFolder", "destpath/YourFileOrFolder");
    }
}
```
