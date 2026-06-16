<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/FileUtil.ReplaceDirectory.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Replaces a directory.

Replaces the directory located at **dst** with the directory located at **src**. if **dst** doesnt exists it copies the file. If **dst** exists then it deletes it and copies the directory at **src** to **dst** Additional resources: FileUtil.ReplaceFile.

```csharp
using UnityEngine;
using UnityEditor;public class ReplaceDir : MonoBehaviour
{
    [MenuItem("Example/Replace Directory")]
    static void ReplaceDirectory()
    {
        FileUtil.ReplaceDirectory("sourcepath/YourFolder", "destpath/YourNewFolder");
    }
}
```
