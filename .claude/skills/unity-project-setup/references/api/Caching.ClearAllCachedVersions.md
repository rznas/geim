<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Caching.ClearAllCachedVersions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assetBundleName | The AssetBundle name. |

### Returns

**bool** Returns true when cache clearing succeeded.

### Description

Removes all the cached versions of the given AssetBundle from the cache.

Returns false if any cached bundle is in use.

```csharp
using System.Collections;
using UnityEngine.Networking;
using UnityEngine;public class Example : MonoBehaviour
{
    IEnumerator ClearAllCachedVersionsExample(string uri)
    {
        //Download the bundle
        UnityWebRequest request = UnityWebRequestAssetBundle.GetAssetBundle(uri);
        yield return request.SendWebRequest();
        AssetBundle bundle = DownloadHandlerAssetBundle.GetContent(request);        //Given the name of an asset bundle, this will clear every cached version across all caches
        Caching.ClearAllCachedVersions(bundle.name);        //Unload the AssetBundle
        bundle.Unload(true);
    }
}
```
