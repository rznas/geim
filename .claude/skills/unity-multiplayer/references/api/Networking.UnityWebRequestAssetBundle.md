<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UnityWebRequestAssetBundle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Helpers for downloading asset bundles using UnityWebRequest.

```csharp
using UnityEngine;
using UnityEngine.Networking;
using System.Threading.Tasks;// This example demonstrates how to load an AssetBundle asynchronously.
public class AssetBundleLoader : MonoBehaviour
{
    // Load an AssetBundle from a URL asynchronously
    public async Task<AssetBundle> LoadAssetBundleAsync(string url)
    {
        using (UnityWebRequest request = UnityWebRequestAssetBundle.GetAssetBundle(url))
        {
            var operation = request.SendWebRequest();            while (!operation.isDone)
                await Task.Yield();            if (request.result != UnityWebRequest.Result.Success)
            {
                Debug.LogError($"Failed to load AssetBundle: {request.error}");
                return null;
            }            return DownloadHandlerAssetBundle.GetContent(request);
        }
    }    // Example usage
    public async void LoadBundle()
    {
        // Replace this with your own URL.
        // You can use python -m http.server to serve files locally.
        // Remember to first build the AssetBundle
        string bundleUrl = "http://example.com/mybundle.assetbundle";
        AssetBundle bundle = await LoadAssetBundleAsync(bundleUrl);        if (bundle != null)
        {
            // Load assets from bundle
            GameObject prefab = bundle.LoadAsset<GameObject>("MyPrefab");
            Instantiate(prefab);            // Remember to unload when done
            bundle.Unload(false);
        }
    }
}
```

Additional resources: AssetBundle, DownloadHandlerAssetBundle, GetAssetBundle.

### Static Methods

| Method | Description |
| --- | --- |
| GetAssetBundle | Creates a UnityWebRequest optimized for downloading a Unity Asset Bundle via HTTP GET. |
