<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/FileUtil.ReplaceFile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Replaces a file.

Replaces the file located at **dst** with the file located at **src**. if **dst** doesnt exists it just copies the file. If **dst** exists then it deletes it and copies the file at **src** to **dst** Additional resources: FileUtil.ReplaceDirectory.

```csharp
using UnityEngine;
using UnityEditor;public class ReplaceFile : MonoBehaviour
{
    [MenuItem("Example/Replace Something")]
    static void ReplaceSomething()
    {
        FileUtil.ReplaceFile("sourcepath/YourFileOrFolder", "destpath/YourReplacedFileOrFolder");
    }
}
```
