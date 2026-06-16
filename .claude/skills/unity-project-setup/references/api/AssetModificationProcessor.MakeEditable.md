<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetModificationProcessor.MakeEditable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| paths | Specifies an array of file paths relative to the project root. |
| prompt | Dialog prompt to show to the user, if a version control operation needs to be done. If `null` (default), no prompt is shown. |
| outNotEditablePaths | Output list of file paths that could not be made editable. |

### Returns

**void** Returns `true` if all files have been made editable.

### Description

Unity calls this method when one or more files need to be opened for editing.

It must be static if implemented.

Additional resources: AssetDatabase.MakeEditable.

```csharp
using System.Collections.Generic;
using UnityEngine;class CustomAssetModificationProcessor : UnityEditor.AssetModificationProcessor
{
    static bool MakeEditable(string[] paths, string prompt, List<string> outNotEditablePaths)
    {
        Debug.Log("MakeEditable:");
        foreach (var path in paths)
            Debug.Log(path);
        return true;
    }
}
```
