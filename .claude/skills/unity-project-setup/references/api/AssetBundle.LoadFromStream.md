<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetBundle.LoadFromStream.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| stream | The managed Stream object. Unity calls Read(), Seek() and the Length property on this object to load the AssetBundle data. |
| crc | An optional CRC-32 checksum of the uncompressed content. |
| managedReadBufferSize | You can use this to override the size of the read buffer Unity uses while loading data. The default size is 32KB. |

### Returns

**AssetBundle** The loaded AssetBundle object or null when the object fails to load.

### Description

Synchronously loads an AssetBundle from a managed Stream.

The function supports bundles of any compression type. **lzma** compressed data is decompressed to memory, while uncompressed and chunk-compressed bundles are read directly from the Stream.

The content is compared against the checksum before it is loaded when the checksum is a non-zero value. An error is thrown if it does not match.

Unlike LoadFromStreamAsync, this function is synchronous and only returns when it has loaded the AssetBundle object.

Unlike LoadFromFile, the data for the AssetBundle is supplied by a managed Stream object.

The following are restrictions on a Stream object to optimize AssetBundle data loading:

1. The AssetBundle data must start at stream position zero.
2. Unity sets the seek position to zero before it loads the AssetBundle data.
3. Unity assumes the read position in the stream is not altered by any other process. This allows the Unity process to read from the stream without having to call Seek() before every read.
4. stream.CanRead must return true.
5. stream.CanSeek must return true.
6. It must be accessible from threads different to the main thread. Seek() and Read() can be called from any Unity native thread.
7. In certain circumstances, Unity tries to read past the size of the AssetBundle data. The Stream implementation must gracefully handle this without throwing exceptions. The Stream implementation must also return the actual number of bytes read (not including any bytes past the end of the AssetBundle data).
8. When starting at the end of the AssetBundle data and trying to read data the Stream implementation must return 0 bytes read and not throw exceptions.

To reduce the number of calls from native to managed code the data is read from the Stream using a buffered reader with a buffer size of **managedReadBufferSize**.

- Changing **managedReadBufferSize** may change the loading performance, especially on mobile devices.
- The optimal value for **managedReadBufferSize** varies from project to project and potentially from Asset Bundle to Asset Bundle.
- A good range of values to experiment with is: 8KB, 16KB, 32KB, 64KB, 128KB.
- Larger values might be better for compressed Asset Bundles or if the Asset Bundle contains large sized assets or if the Asset Bundle does not contain many assets and they are loaded sequentially from the Asset Bundle.
- Smaller values might be better for uncompressed Asset Bundles and reading lots of small assets or if the Asset Bundles has lots of assets in it and the asset are loaded in a random order.

Do not dispose the Stream object while loading the AssetBundle or any assets from the bundle. Its lifetime should be longer than the AssetBundle. This means you dispose the Stream object after calling AssetBundle.Unload.

```csharp
using UnityEngine;
using System.Collections;
using System;
using System.IO;public class LoadFromStreamExample : MonoBehaviour
{
    void Start()
    {
        var fileStream = new FileStream(Application.streamingAssetsPath, FileMode.Open, FileAccess.Read);
        var myLoadedAssetBundle = AssetBundle.LoadFromStream(fileStream);
        if (myLoadedAssetBundle == null)
        {
            Debug.Log("Failed to load AssetBundle!");
            return;
        }        var prefab = myLoadedAssetBundle.LoadAsset<GameObject>("MyObject");
        Instantiate(prefab);        myLoadedAssetBundle.Unload(false);
        fileStream.Dispose();
    }
}
```

Additional resources: AssetBundle, LoadFromStreamAsync LoadFromFile.
