<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PackageManager.Client.SearchAll.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| offlineMode | Specifies whether or not the Package Manager requests the latest information about the project's packages from the remote Unity package registry. When `offlineMode` is `true`, the PackageInfo objects returned by the Package Manager contain information obtained from the local package cache, which could be out of date. |

### Returns

**SearchRequest** A SearchRequest instance, which you can use to get the array of PackageInfo objects representing the packages matching the search criteria from the `SearchRequest.Result` property.

### Description

Searches for all discoverable packages compatible with the current Unity version.

This operation issues a request to the main Unity package registry.

 `SearchAll()` is an asynchronous operation. Before the operation is complete, you can use the `SearchRequest` instance to monitor the asynchronous operation.

 
**Note:** Make sure any other Client operations have completed before calling this method. For more information, see the note on the Client class reference page.
