<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Caching.ClearCachedVersion.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assetBundleName | The AssetBundle name. |
| hash | Version needs to be cleaned. |

### Returns

**bool** Returns true when cache clearing succeeded. Can return false if any cached bundle is in use.

### Description

Removes the given version of the AssetBundle.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void ClearAssetBundleBundleFromCache(AssetBundle bundleToClear, string manifestBundlePath)
    {
        AssetBundle manifestBundle = AssetBundle.LoadFromFile(manifestBundlePath);
        AssetBundleManifest manifest = manifestBundle.LoadAsset<AssetBundleManifest>("AssetBundleManifest");        //This will clear the cached version from all caches, not just the currentCacheForWriting
        Caching.ClearCachedVersion(bundleToClear.name, manifest.GetAssetBundleHash(bundleToClear.name));        //Unload the AssetBundle
        manifestBundle.Unload(true);
    }
}
```
