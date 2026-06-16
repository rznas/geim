<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WWW.LoadFromCacheOrDownload.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| url | The URL to download the AssetBundle from, if it is not present in the cache. Must be '%' escaped. |
| version | Version of the AssetBundle. The file will only be loaded from the disk cache if it has previously been downloaded with the same `version` parameter. By incrementing the version number requested by your application, you can force Caching to download a new copy of the AssetBundle from `url`. |
| hash | Hash128 which is used as the version of the AssetBundle. |
| cachedBundle | A structure used to download a given version of AssetBundle to a customized cache path.  Analogous to the `cachedAssetBundle` parameter for UnityWebRequestAssetBundle.GetAssetBundle.</param> |
| crc | An optional CRC-32 Checksum of the uncompressed contents. If this is non-zero, then the content will be compared against the checksum before loading it, and give an error if it does not match. You can use this to avoid data corruption from bad downloads or users tampering with the cached files on disk. If the CRC does not match, Unity will try to redownload the data, and if the CRC on the server does not match it will fail with an error. Look at the error string returned to see the correct CRC value to use for an AssetBundle. |

### Returns

**WWW** A WWW instance, which can be used to access the data once the load/download operation is completed.

### Description

Loads an AssetBundle with the specified version number from the cache. If the AssetBundle is not currently cached, it will automatically be downloaded and stored in the cache for future retrieval from local storage.

LoadFromCacheOrDownload() must be used in place of "new WWW (url)" in order to utilize caching functionality.

Cached AssetBundles are uniquely identified solely by the filename and version. All domain and path information in `url` is ignored by Caching. Since cached AssetBundles are identified by filename instead of the full URL, you can change the directory from where the asset bundle is downloaded at any time. This is useful for pushing out new versions of the game and ensuring that files are not cached incorrectly by the browser or by a CDN.

Usually using the filename of the AssetBundle to generate the cache path is fine. But if there are different AssetBundles with the same last file name, cache conflicts will happen. With CachedAssetBundle, users can use CachedAssetBundle.name to customized the cache path to avoid the cache conflicts. Users can also utilize this to organize the cache data structure.

If the cache folder does not have any space for caching additional files, LoadFromCacheOrDownload will iteratively delete the least-recently-used AssetBundles from the Cache until sufficient space is available to store the new AssetBundle. If making space is not possible (because the hard disk is full, or all files in the cache are currently in use), LoadFromCacheOrDownload() will bypass Caching and stream the file into memory like a normal "new WWW()" call.

Cached data can be stored in a compressed form depending on Caching.compressionEnabled value.

This function can only be used to access AssetBundles. No other types or content are cacheable.

The CRC passed into this function is computed during Asset Bundle build time, see BuildPipeline.BuildAssetBundles.

***Note:*** URL must be '%' escaped.

```csharp
using UnityEngine;
using System.Collections;public class LoadFromCacheOrDownloadExample : MonoBehaviour
{
    IEnumerator Start()
    {
        while (!Caching.ready)
            yield return null;        using (var www = WWW.LoadFromCacheOrDownload("https://myserver.com/myassetBundle.unity3d", 5))
        {
            yield return www;
            if (!string.IsNullOrEmpty(www.error))
            {
                Debug.Log(www.error);
                yield return null;
            }
            var myLoadedAssetBundle = www.assetBundle;            var asset = myLoadedAssetBundle.mainAsset;
        }
    }
}
```

Additional resources: BuildPipeline.BuildAssetBundles.
