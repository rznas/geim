<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Caching.GetCachedVersions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assetBundleName | The AssetBundle name. |
| outCachedVersions | List of all the cached version. |

### Description

Returns all cached versions of the given AssetBundle.

```csharp
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;public class Example : MonoBehaviour
{
    IEnumerator GetCachedVersionExample(string uri)
    {
        //Download the bundle
        UnityWebRequest request = UnityWebRequestAssetBundle.GetAssetBundle(uri);
        yield return request.SendWebRequest();
        AssetBundle bundle = DownloadHandlerAssetBundle.GetContent(request);        //Get all the cached versions
        List<Hash128> listOfCachedVersions = new List<Hash128>();
        Caching.GetCachedVersions(bundle.name, listOfCachedVersions);        //use listOfCachedVersions hashes to perform actions on Caches...        //Unload the AssetBundle
        bundle.Unload(true);
    }
}
```
