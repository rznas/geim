<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.DownloadHandlerAssetBundle-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| url | The nominal (pre-redirect) URL at which the asset bundle is located. |
| crc | A checksum to compare to the downloaded data for integrity checking, or zero to skip integrity checking. |

### Description

Standard constructor for non-cached asset bundles.

This constructor will bypass the caching system and simply download the AssetBundle from `url`.

If the `crc` argument is non-zero, then the `crc` argument will be compared to the checksum of the downloaded data. If the CRCs do not match, an error will be logged, the asset bundle will not be loaded, and assetBundle will return `null`.

If you do not wish to use CRC integrity checking, pass zero as the `crc` argument.

```csharp
using System.Collections;
using UnityEngine;
using UnityEngine.Networking;public class Example : MonoBehaviour
{
    IEnumerator Start()
    {
        string url = "https://website.com/assetbundle";
        using (var uwr = new UnityWebRequest(url, UnityWebRequest.kHttpVerbGET))
        {
            uwr.downloadHandler = new DownloadHandlerAssetBundle(url, 0);
            yield return uwr.SendWebRequest();
            AssetBundle bundle = DownloadHandlerAssetBundle.GetContent(uwr);            //Unload the AssetBundle
            bundle.Unload(true);
        }
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| url | The nominal (pre-redirect) URL at which the asset bundle is located. |
| crc | A checksum to compare to the downloaded data for integrity checking, or zero to skip integrity checking. |
| version | Current version number of the asset bundle at `url`. Increment to redownload. |

### Description

Simple versioned constructor. Caches downloaded asset bundles.

When this constructor is used, the DownloadHandlerAssetBundle will first check to see if there is a cached AssetBundle from `url`.

If there is no cached asset bundle, or if the cached asset bundle's `version` matches the `version` argument, then the system will skip downloading the asset bundle and instead load it from the cache.

If there is a cached asset bundle, but the cached bundle's `version` does not match the `version` argument, then the system will re-download the asset bundle from `url`.

If the `crc` argument is non-zero, then the `crc` argument will be compared to the checksum of the downloaded data. If the CRCs do not match, an error will be logged, the asset bundle will not be loaded, and assetBundle will return `null`.

If you do not wish to use CRC integrity checking, pass zero as the `crc` argument.

### Parameters

| Parameter | Description |
| --- | --- |
| url | The nominal (pre-redirect) URL at which the asset bundle is located. |
| crc | A checksum to compare to the downloaded data for integrity checking, or zero to skip integrity checking. |
| hash | A hash object defining the version of the asset bundle. |

### Description

Versioned constructor. Caches downloaded asset bundles.

When this constructor is used, the DownloadHandlerAssetBundle will first check to see if there is a cached AssetBundle from `url`.

If there is no cached asset bundle, or if the cached asset bundle's `hash` matches the `hash` argument, then the system will skip downloading the asset bundle and instead load it from the cache.

If there is a cached asset bundle, but the cached bundle's `hash` does not match the `hash` argument, then the system will re-download the asset bundle from `url`.

If the `crc` argument is non-zero, then the `crc` argument will be compared to the checksum of the downloaded data. If the CRCs do not match, an error will be logged, the asset bundle will not be loaded, and assetBundle will return `null`.

If you do not wish to use CRC integrity checking, pass zero as the `crc` argument.

### Parameters

| Parameter | Description |
| --- | --- |
| url | The nominal (pre-redirect) URL at which the asset bundle is located. |
| hash | A hash object defining the version of the asset bundle. |
| crc | A checksum to compare to the downloaded data for integrity checking, or zero to skip integrity checking. |
| cachedBundle | A structure used to download a given version of AssetBundle to a customized cache path. |
| name | AssetBundle name which is used as the customized cache path. |

### Description

Versioned constructor. Caches downloaded asset bundles to a customized cache path.

Cached AssetBundles are uniquely identified solely by the filename and version. All domain and path information in `url` is ignored by Caching. Since cached AssetBundles are identified by filename instead of the full URL, you can change the directory from where the asset bundle is downloaded at any time. This is useful for pushing out new versions of the game and ensuring that files are not cached incorrectly by the browser or by a CDN.

Usually using the filename of the AssetBundle to generate the cache path is fine. But if there are different AssetBundles with the same last file name, cache conflicts happens. With CachedAssetBundle struct, you can use CachedAssetBundle.name to customized the cache path to avoid the cache conflicts. You can also utilize this to organize the cache data structure.
