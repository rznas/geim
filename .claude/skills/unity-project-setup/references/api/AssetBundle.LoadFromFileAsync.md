<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetBundle.LoadFromFileAsync.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | Path of the file on disk. |
| crc | An optional CRC-32 checksum of the uncompressed content. If this is non-zero, then the content will be compared against the checksum before loading it, and give an error if it does not match. |
| offset | An optional byte offset. This value specifies where to start reading the AssetBundle from. |

### Returns

**AssetBundleCreateRequest** Asynchronous load request for an AssetBundle. Use AssetBundleCreateRequest.assetBundle property to get an AssetBundle once it is loaded.

### Description

Asynchronously loads an AssetBundle from a file on disk.

The function supports bundles of any compression type. In case of **LZMA** compression, the data will be decompressed to the memory. See AssetBundles compression for more details.

This is the fastest way to load an AssetBundle.

```csharp
using UnityEngine;
using System.Collections;
using System.IO;public class LoadFromFileAsyncExample : MonoBehaviour
{
    IEnumerator Start()
    {
        var bundleLoadRequest = AssetBundle.LoadFromFileAsync(Path.Combine(Application.streamingAssetsPath, "myassetBundle"));
        yield return bundleLoadRequest;        var myLoadedAssetBundle = bundleLoadRequest.assetBundle;
        if (myLoadedAssetBundle == null)
        {
            Debug.Log("Failed to load AssetBundle!");
            yield break;
        }        var assetLoadRequest = myLoadedAssetBundle.LoadAssetAsync<GameObject>("MyObject");
        yield return assetLoadRequest;        GameObject prefab = assetLoadRequest.asset as GameObject;
        Instantiate(prefab);        myLoadedAssetBundle.Unload(false);
    }
}
```

Additional resources: AssetBundleCreateRequest, LoadFromFile.
