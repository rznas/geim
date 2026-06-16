<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Caching-ready.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns true if Caching system is ready for use.

```csharp
using System.Collections;
using UnityEngine;
using UnityEngine.Networking;public class Example : MonoBehaviour
{
    IEnumerator IsCachingReadyExample(string uri)
    {
        //Using this conditional says we want to wait for our Caching system to be ready before trying to download bundles
        while (!Caching.ready)
        {
            yield return null;
        }
        //Download the bundle
        UnityWebRequest request = UnityWebRequestAssetBundle.GetAssetBundle(uri);
        yield return request.SendWebRequest();
        AssetBundle bundle = DownloadHandlerAssetBundle.GetContent(request);        //Do something with the AssetBundle...        //Unload the AssetBundle
        bundle.Unload(true);
    }
}
```
