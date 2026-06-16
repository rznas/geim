<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetModificationProcessor.OnWillSaveAssets.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This is called by Unity when it is about to write serialized assets or Scene files to disk.

If it is implemented, it allows you to override which files are written by returning an array containing a subset of the pathnames which have been passed by Unity. Note that this function is static.

```csharp
using UnityEngine;
using UnityEditor;
using System.Collections;public class FileModificationWarning : AssetModificationProcessor
{
    static string[] OnWillSaveAssets(string[] paths)
    {
        Debug.Log("OnWillSaveAssets");
        foreach (string path in paths)
            Debug.Log(path);
        return paths;
    }
}
```
