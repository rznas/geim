<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetBundle.LoadFromFile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | Path of the file on disk. |
| crc | An optional CRC-32 checksum of the uncompressed content. If this is non-zero, then the content will be compared against the checksum before loading it, and give an error if it does not match. |
| offset | An optional byte offset. This value specifies where to start reading the AssetBundle from. |

### Returns

**AssetBundle** Loaded AssetBundle object or null if failed.

### Description

Synchronously loads an AssetBundle from a file on disk.

The function supports bundles of any compression type. In case of **LZMA** compression, the file content will be fully decompressed into memory and loaded from there. See AssetBundles compression for more details.

Compared to LoadFromFileAsync, this version is synchronous and will not return until it is done creating the AssetBundle object.

This is the fastest way to load an AssetBundle.

```csharp
using UnityEngine;
using System.Collections;
using System.IO;public class LoadFromFileExample : MonoBehaviour
{
    void Start()
    {
        var myLoadedAssetBundle = AssetBundle.LoadFromFile(Path.Combine(Application.streamingAssetsPath, "myassetBundle"));
        if (myLoadedAssetBundle == null)
        {
            Debug.Log("Failed to load AssetBundle!");
            return;
        }        var prefab = myLoadedAssetBundle.LoadAsset<GameObject>("MyObject");
        Instantiate(prefab);        myLoadedAssetBundle.Unload(false);
    }
}
```

Additional resources: AssetBundle, LoadFromFileAsync.
