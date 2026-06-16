<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Caching.ClearOtherCachedVersions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assetBundleName | The AssetBundle name. |
| hash | Version needs to be kept. |

### Returns

**bool** Returns true when cache clearing succeeded.

### Description

Removes all the cached versions of the AssetBundle from the cache, except for the specified version.

Returns false if any cached bundle is in use.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void ClearOtherCachedVersionsExample(AssetBundle bundleToSave, string manifestBundlePath)
    {
        AssetBundle manifestBundle = AssetBundle.LoadFromFile(manifestBundlePath);
        AssetBundleManifest manifest = manifestBundle.LoadAsset<AssetBundleManifest>("AssetBundleManifest");        //This will clear all the cached version of this asset bundle except for this specific cached version
        bool success = Caching.ClearOtherCachedVersions(bundleToSave.name, manifest.GetAssetBundleHash(bundleToSave.name));        if (!success)
        {
            Debug.Log("Unable to clear the caches");
        }        //Unload the AssetBundle
        manifestBundle.Unload(true);
    }
}
```
