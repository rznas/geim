<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PackageManager.Client.List.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| offlineMode | Specifies whether or not the Package Manager requests the latest information about the project's packages from the remote Unity package registry. When `offlineMode` is `true`, the PackageInfo objects in the PackageCollection returned by the Package Manager contain information obtained from the local package cache, which could be out of date. |
| includeIndirectDependencies | Set to `true` to include indirect dependencies in the PackageCollection returned by the Package Manager. Indirect dependencies include packages referenced in the manifests of project packages or in the manifests of other indirect dependencies. Set to `false` to include only the packages listed directly in the project manifest.  **Note:** The version reported might not match the version requested in the project manifest. For more information, see Dependency and resolution. |

### Returns

**ListRequest** A ListRequest instance, which you can use to get the PackageCollection representing the packages used in the project from the `ListRequest.Result` property.

### Description

Lists the packages the project depends on.

Computes and returns the set of all packages that the project depends on (the resolved dependency graph) without physically downloading or installing any packages. The operation result contains only the resolved dependency graph as a PackageCollection.

 `List()` is an asynchronous operation. Before the operation is complete, you can use the `ListRequest` instance to monitor the asynchronous operation.

 **Note:** Make sure any other Client operations have completed before calling this method. For more information, see the note on the Client class reference page. Additional resources: PackageInfo.GetAllRegisteredPackages
