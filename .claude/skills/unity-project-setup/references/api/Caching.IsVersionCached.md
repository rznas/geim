<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Caching.IsVersionCached.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| Url | The filename of the AssetBundle. Domain and path information are stripped from this string automatically. |
| hash | The version hash of the AssetBundle to check for. Corresponds to the version hash in some signatures of UnityWebRequestAssetBundle.GetAssetBundle. |
| version | The version number of the AssetBundle to check for. Corresponds to the numeric version in some signatures of UnityWebRequestAssetBundle.GetAssetBundle. |

### Returns

**bool** True if an AssetBundle matching the `url` and `version` parameters has previously been loaded using UnityWebRequestAssetBundle.GetAssetBundle() and is currently stored in the cache. Returns false if the AssetBundle is not in cache, either because it has been flushed from the cache or was never loaded using the Caching API.

### Description

Checks if an AssetBundle is cached.

When using the default shared cache, the URL of the WebPlayer application bundle is automatically prepended to the `url` parameter; this prevents filename collisions with identically-named AssetBundles used by other developers' WebPlayer applications. WebPlayer applications that use a dedicated cache do not experience this behavior. This function can be utilized to enable AssetBundle preloading. First, call Caching.IsVersionCached() to see if the current version of an AssetBundle is already cached. If the AssetBundle is not cached, it can be preloaded in the background so that it is immediately available for loading into memory when requested.
