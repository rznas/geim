<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetBundle.LoadFromMemoryAsync.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| binary | Array of bytes with the AssetBundle data. |
| crc | An optional CRC-32 checksum of the uncompressed content. If this is non-zero, then the content will be compared against the checksum before loading it, and give an error if it does not match. |

### Returns

**AssetBundleCreateRequest** Asynchronous load request for an AssetBundle. Use AssetBundleCreateRequest.assetBundle property to get an AssetBundle once it is loaded.

### Description

Asynchronously load an AssetBundle from a memory region.

Use this method to load an AssetBundle from an array of bytes asynchronously. This is useful when you have downloaded the data with encryption using UnityWebRequest and have the unencrypted bytes in memory instead of stored in a file.

Compared to LoadFromMemory, this version will perform AssetBundle decompression on a background thread, and will not create the AssetBundle object immediately.

The content of the provided byte array is copied to create a temporary AssetBundle file in Memory, and that file is then loaded. Depending on the compression of the original AssetBundle, and the setting for Caching.compressionEnabled, this may also involve converting the content to LZ4 or uncompressed format. See AssetBundles compression for more details.

The following example shows how to use this method. Note, for the sake of keeping the example simple it reads the bytes from disk, which means it has no advantage over calling AssetBundle.LoadFromFileAsync directly.

```csharp
using UnityEngine;
using System.Collections;
using System.IO;public class Example : MonoBehaviour
{
    IEnumerator LoadFromMemoryAsync(string path)
    {
        AssetBundleCreateRequest createRequest = AssetBundle.LoadFromMemoryAsync(File.ReadAllBytes(path));
        yield return createRequest;
        AssetBundle bundle = createRequest.assetBundle;
        var prefab = bundle.LoadAsset<GameObject>("MyObject");
        Instantiate(prefab);        bundle.Unload(true);
    }
}
```

Additional resources: AssetBundleCreateRequest, LoadFromMemory, LoadFromFileAsync.
