<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetModificationProcessor.FileModeChanged.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Unity calls this method when file mode has been changed for one or more files.

Array of strings specifies changed files. FileMode specifies new file mode. This method must be static if implemented.

```csharp
using UnityEngine;
using UnityEditor.VersionControl;class CustomAssetModificationProcessor : UnityEditor.AssetModificationProcessor
{
    static void FileModeChanged(string[] paths, FileMode mode)
    {
        Debug.Log($"{nameof(FileModeChanged)} ({mode}):");
        foreach (var path in paths)
            Debug.Log(path);
    }
}
```
