<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/FileUtil.CopyFileOrDirectoryFollowSymlinks.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Copies the file or directory.

Copies from the path suppplied as the `source` parameter to the path supplied as the `dest` parameter.

In presence of symbolic links (macOS only), the actual files to which symbolic links point to are copied, not the symbolic links themselves.

Additional resources: FileUtil.CopyFileOrDirectory.

```csharp
using UnityEngine;
using UnityEditor;public class CopyFileSymLink : MonoBehaviour
{
    [MenuItem("Example/Copy Something SymLink")]
    static void CopySomethingSymLink()
    {
        FileUtil.CopyFileOrDirectoryFollowSymlinks("sourcepath/YourFileOrFolder", "destpath/YourFileOrFolder");
    }
}
```
