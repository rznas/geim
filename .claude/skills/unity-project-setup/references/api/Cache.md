<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Cache.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Data structure for cache. For more information, see Caching.AddCache.

**Note:** The Cache API is not supported in WebGL because AssetBundles are stored in the browser cache for the WebGL platform.

### Properties

| Property | Description |
| --- | --- |
| expirationDelay | The number of seconds that an AssetBundle may remain unused in the cache before it is automatically deleted. |
| index | Returns the index of the cache in the cache list. |
| maximumAvailableStorageSpace | Allows you to specify the total number of bytes that can be allocated for the cache. |
| path | Returns the path of the cache. |
| readOnly | Returns true if the cache is readonly. |
| ready | Returns true if the cache is ready. |
| spaceFree | Returns the number of currently unused bytes in the cache. |
| spaceOccupied | Returns the used disk space in bytes. |
| valid | Returns true if the cache is valid. |

### Public Methods

| Method | Description |
| --- | --- |
| ClearCache | Removes all cached content in the cache that has been cached by the current application. |
