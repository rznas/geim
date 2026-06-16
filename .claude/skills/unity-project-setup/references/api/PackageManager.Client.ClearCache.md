<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PackageManager.Client.ClearCache.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**ClearCacheRequest** A ClearCacheRequest instance, which you can use to get the StatusCode to know if the operation completed successfully.

### Description

Empties the package cache.

Empties the global package cache. Clearing the cache will free disk space. However, if a package removed from the cache needs to be installed in a project, it will be downloaded. As a result, reinstalling the package will take longer.

 `ClearCache()` is an asynchronous operation. Before the operation is complete, you can use the `ClearCacheRequest` instance to monitor the asynchronous operation.

 **Note:** Make sure any other Client operations have completed before calling this method. For more information, refer to the note on the Client class reference page.
