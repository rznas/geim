<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Caching.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Caching class lets you manage cached AssetBundles, downloaded using UnityWebRequestAssetBundle.GetAssetBundle.

**Note:** The Cache API is not supported in WebGL because AssetBundles are stored in the browser cache for the WebGL platform.

 Additional resources: DownloadHandlerAssetBundle.

```csharp
using System.Collections;
using UnityEngine;
using System.IO;
using System;
using UnityEngine.Networking;
using System.Collections.Generic;public class Example : MonoBehaviour
{
    IEnumerator DownloadAndCacheAssetBundle(string uri, string manifestBundlePath)
    {
        //Load the manifest
        AssetBundle manifestBundle = AssetBundle.LoadFromFile(manifestBundlePath);
        AssetBundleManifest manifest = manifestBundle.LoadAsset<AssetBundleManifest>("AssetBundleManifest");        //Create new cache
        string today = DateTime.Today.ToLongDateString();
        Directory.CreateDirectory(today);
        Cache newCache = Caching.AddCache(today);        //Set current cache for writing to the new cache if the cache is valid
        if (newCache.valid)
            Caching.currentCacheForWriting = newCache;        //Download the bundle
        Hash128 hash = manifest.GetAssetBundleHash("bundleName");
        UnityWebRequest request = UnityWebRequestAssetBundle.GetAssetBundle(uri, hash, 0);
        yield return request.SendWebRequest();
        AssetBundle bundle = DownloadHandlerAssetBundle.GetContent(request);        //Get all the cached versions
        List<Hash128> listOfCachedVersions = new List<Hash128>();
        Caching.GetCachedVersions(bundle.name, listOfCachedVersions);        if (!AssetBundleContainsAssetIWantToLoad(bundle))     //Or any conditions you want to check on your new asset bundle
        {
            //If our criteria wasn't met, we can remove the new cache and revert back to the most recent one
            Caching.currentCacheForWriting = Caching.GetCacheAt(Caching.cacheCount);
            Caching.RemoveCache(newCache);            for (int i = listOfCachedVersions.Count - 1; i > 0; i--)
            {
                //Load a different bundle from a different cache
                request = UnityWebRequestAssetBundle.GetAssetBundle(uri, listOfCachedVersions[i], 0);
                yield return request.SendWebRequest();
                bundle = DownloadHandlerAssetBundle.GetContent(request);                //Check and see if the newly loaded bundle from the cache meets your criteria
                if (AssetBundleContainsAssetIWantToLoad(bundle))
                    break;
            }
        }
        else
        {
            //This is if we only want to keep 5 local caches at any time
            if (Caching.cacheCount > 5)
                Caching.RemoveCache(Caching.GetCacheAt(1));     //Removes the oldest user created cache
        }        manifestBundle.Unload(true);
        bundle.Unload(true);    }    bool AssetBundleContainsAssetIWantToLoad(AssetBundle bundle)
    {
        return (bundle.LoadAsset<GameObject>("MyAsset") != null);     //this could be any conditional
    }
}
```

To store up to five cached versions of the same bundle and use the previous caches if your most recent cache becomes invalid, or the downloaded Asset Bundle has a problem, use the following setup.

```csharp
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;
using System.IO;public class Example2 : MonoBehaviour
{
    public static class CacheWithPriority
    {
        public enum ResolutionType
        {
            High,
            Medium,
            Low,
        }
        static readonly Dictionary<ResolutionType, Cache> ResolutionCaches = new Dictionary<ResolutionType, Cache>();        public static void InitResolutionCaches()
        {
            string highResPath = "HighRes";
            string medResPath = "MedRes";
            string lowResPath = Application.streamingAssetsPath;            //Create cache paths
            Directory.CreateDirectory(highResPath);
            Directory.CreateDirectory(medResPath);            //Create the caches and add them to a Dictionary
            ResolutionCaches.Add(ResolutionType.High, Caching.AddCache(highResPath));
            ResolutionCaches.Add(ResolutionType.Medium, Caching.AddCache(medResPath));
            ResolutionCaches.Add(ResolutionType.Low, Caching.AddCache(lowResPath));
        }        public static void PrioritizeCacheForLoading(ResolutionType resolutionToPrioritize)
        {
            //Move cache to the start of the queue
            Caching.MoveCacheBefore(ResolutionCaches[resolutionToPrioritize], Caching.GetCacheAt(0));
        }        public static void SetResolutionCacheForWriting(ResolutionType resolutionToWriteTo)
        {
            Caching.currentCacheForWriting = ResolutionCaches[resolutionToWriteTo];
        }
    }    AssetBundle currentTextureAssetBundle;
    IEnumerator RearrangeCacheOrderExample(string manifestBundlePath)
    {
        CacheWithPriority.InitResolutionCaches();        //Load the manifest
        AssetBundle manifestBundle = AssetBundle.LoadFromFile(manifestBundlePath);
        AssetBundleManifest manifest = manifestBundle.LoadAsset<AssetBundleManifest>("AssetBundleManifest");        //We know we want to start loading from the Low Resolution Cache
        CacheWithPriority.PrioritizeCacheForLoading(CacheWithPriority.ResolutionType.Low);        //Load the low res bundle from StreamingAssets
        UnityWebRequest lowRequest = UnityWebRequestAssetBundle.GetAssetBundle("lowResBundlePath",
            manifest.GetAssetBundleHash("lowResBundle"), 0);
        yield return lowRequest;
        currentTextureAssetBundle = DownloadHandlerAssetBundle.GetContent(lowRequest);        //In the background we can start downloading our higher resolution bundles
        StartCoroutine(StartDownloadHigherResolutionBundles(manifest));        //Do work with low res bundle while the higher resolutions download...        //Unload the AssetBundle
        manifestBundle.Unload(true);
    }    IEnumerator StartDownloadHigherResolutionBundles(AssetBundleManifest manifest)
    {
        CacheWithPriority.SetResolutionCacheForWriting(CacheWithPriority.ResolutionType.Medium);
        UnityWebRequest medRequest = UnityWebRequestAssetBundle.GetAssetBundle("medResBundleUrl", manifest.GetAssetBundleHash("medResBundle"), 0);
        medRequest.SendWebRequest();        while (!medRequest.isDone)
            yield return null;
        SwitchTextureBundleTo(CacheWithPriority.ResolutionType.Medium, medRequest);        //Now you'll be using the medium resolution bundle        CacheWithPriority.SetResolutionCacheForWriting(CacheWithPriority.ResolutionType.High);
        UnityWebRequest highRequest = UnityWebRequestAssetBundle.GetAssetBundle("highResBundleUrl", manifest.GetAssetBundleHash("highResBundle"), 0);
        highRequest.SendWebRequest();        while (!highRequest.isDone)
            yield return null;
        SwitchTextureBundleTo(CacheWithPriority.ResolutionType.High, highRequest);        //Do work with the high resolution bundle now...
    }    void SwitchTextureBundleTo(CacheWithPriority.ResolutionType typeToSwitchTo, UnityWebRequest request)
    {
        //For performance, we tell the Caching system what cache we want it to search first
        CacheWithPriority.PrioritizeCacheForLoading(typeToSwitchTo);
        //Unload our current texture bundle
        currentTextureAssetBundle.Unload(true);
        //Load the new one from the passed in UnityWebRequest
        currentTextureAssetBundle = DownloadHandlerAssetBundle.GetContent(request);
        currentTextureAssetBundle.Unload(true);
    }
}
```

The ability to have multiple caches allows you to keep several cached version of a particular Asset Bundle. You can use these for things like backups and fallbacks.

This example shows downloading medium resolution and high resolution textures after startup and caching them in their own appropriate caches.

### Static Properties

| Property | Description |
| --- | --- |
| cacheCount | Returns the cache count in the cache list. |
| compressionEnabled | Controls compression of cache data. Enabled by default. |
| currentCacheForWriting | Gets or sets the current cache in which AssetBundles should be cached. |
| defaultCache | Returns the default cache which is added by Unity internally. |
| ready | Returns true if Caching system is ready for use. |

### Static Methods

| Method | Description |
| --- | --- |
| AddCache | Add a cache with the given path. |
| ClearAllCachedVersions | Removes all the cached versions of the given AssetBundle from the cache. |
| ClearCache | Removes all AssetBundle content that has been cached by the current application. |
| ClearCachedVersion | Removes the given version of the AssetBundle. |
| ClearOtherCachedVersions | Removes all the cached versions of the AssetBundle from the cache, except for the specified version. |
| GetAllCachePaths | Returns all paths of the cache in the cache list. |
| GetCacheAt | Returns the Cache at the given position in the cache list. |
| GetCacheByPath | Returns the Cache that has the given cache path. |
| GetCachedVersions | Returns all cached versions of the given AssetBundle. |
| IsVersionCached | Checks if an AssetBundle is cached. |
| MarkAsUsed | Bumps the timestamp of a cached file to be the current time. |
| MoveCacheAfter | Moves the source Cache after the destination Cache in the cache list. |
| MoveCacheBefore | Moves the source Cache before the destination Cache in the cache list. |
| RemoveCache | Removes the Cache from cache list. |
