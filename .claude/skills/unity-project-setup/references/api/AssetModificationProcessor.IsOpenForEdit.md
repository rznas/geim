<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetModificationProcessor.IsOpenForEdit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assetOrMetaFilePaths | Paths to Assets or their .meta files, relative to the project folder. |
| outNotEditablePaths | Destination list of non-editable Asset paths. |
| statusQueryOptions | Specifies how Unity should query the version control system. The default value is StatusQueryOptions.UseCachedIfPossible. |

### Returns

**void** Returns `true` if all files are editable.

### Description

This is called by Unity when inspecting assets to determine if an editor should be disabled.

Although this is called by Unity's own systems, you can also call it if you are implementing your own Editor tools such as a custom version control integration.

Additional resources: AssetDatabase.IsOpenForEdit, StatusQueryOptions.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;class CustomAssetModificationProcessor : UnityEditor.AssetModificationProcessor
{
    static bool IsOpenForEdit(string[] paths, List<string> outNotEditablePaths, StatusQueryOptions statusQueryOptions)
    {
        Debug.Log("IsOpenForEdit:");
        foreach (var path in paths)
            Debug.Log(path);
        return true;
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| assetOrMetaFilePath | Path to the asset file or its .meta file on disk, relative to project folder. |
| message | Returns a reason for the asset not being open for edit. |

### Returns

**void** True if the asset is considered open for edit by the selected version control system.

### Description

This is called by Unity when inspecting an asset to determine if an editor should be disabled.

Although this is called by Unity's own systems, you can also call it if you are implementing your own Editor tools such as a custom version control integration. Consider using method overload that accepts an array of file paths to improve version control system performance.
