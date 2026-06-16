<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PackageManager.Client.AddAndRemove.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| packagesToAdd | An array of strings representing the package(s) to be added:    - To install a specific version of a package, use a package identifier ("name@version"). This is the only way to install a pre-release version.  - To install the latest compatible (released) version of a package, specify only the package name.  - To install a git package, specify a git url.  - To install a local package, specify a value in the format "file:/path/to/package/folder".  - To install a local tarball package, specify a value in the format "file:/path/to/package-file.tgz".    `ArgumentException` is thrown if `packagesToAdd` contains `null` or empty values. |
| packagesToRemove | An array of strings representing the names of package(s) to be removed.    `ArgumentException` is thrown if `packagesToRemove` contains `null` or empty values. |
| dryRun | When `false` (default), the add and remove operations are applied to your project. When `dryRun` is `true`, the Package Manager calculates its changes to the final package state without actually modifying the project. This is useful for validation or to show what changes will be made before applying them. |

### Returns

**AddAndRemoveRequest** An AddAndRemoveRequest instance, which you can use to get the PackageCollection representing the package that were added and removed from the project from the `AddAndRemoveRequest.Result` property.

### Description

Adds package dependencies to the project and removes package dependencies from the project. Requesting different dependencies often leads to changing installed packages, but only after the Package Manager constructs a dependency graph to solve any version conflicts. For more information, see Dependency and resolution. 
 
Calling this function is much more efficient than calling the Add and Remove functions several times because for this function, the Package Manager only has to solve the dependency list once, instead of constructing a new dependency graph after each call.

`ArgumentException` is thrown if both `packagesToAdd` and `packagesToRemove` are `null` or empty.

 `AddAndRemove()` is an asynchronous operation. Before the operation is complete, you can use the `AddAndRemoveRequest` instance to monitor the asynchronous operation.

 **Note:** Make sure any other Client operations have completed before calling this method. For more information, see the note on the Client class reference page.

 **Dry run behavior:** When `dryRun` is `true`, the Package Manager calculates what the final package state would be without actually modifying the project. This is useful for validation or to show users what changes would be made before applying them. The resulting PackageCollection represents the simulated final state.
