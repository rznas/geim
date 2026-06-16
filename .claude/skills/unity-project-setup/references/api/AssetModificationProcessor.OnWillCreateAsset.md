<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetModificationProcessor.OnWillCreateAsset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Unity calls this method when it is about to create an Asset you haven't imported (for example, *.meta* files).

```csharp
using UnityEngine;public class CustomAssetModificationProcessor : UnityEditor.AssetModificationProcessor
{
    static void OnWillCreateAsset(string path)
    {
        Debug.Log("Asset is being created at: " + path);
    }
}
```
