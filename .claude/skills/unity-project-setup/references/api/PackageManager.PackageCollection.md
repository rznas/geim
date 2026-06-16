<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PackageManager.PackageCollection.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A collection class that represents all packages in a Unity project, providing enumeration and error handling capabilities for package management operations.

Implements IEnumerable <PackageInfo> interface.

The PackageCollection class serves as a container for PackageInfo objects representing all packages in a Unity project. PackageCollection information is typically obtained as the result of a Client.List() operation. Use the PackageCollection to iterate through packages and check for collection-level errors that might occur during package resolution.

```csharp
using UnityEditor.PackageManager;
using UnityEditor.PackageManager.Requests;
using UnityEngine;public class PackageExample 
{
    void ListAllPackages()
    {
        ListRequest request = Client.List();
        
        while(!request.IsCompleted) {}        if (request.Status == StatusCode.Success)
        {
            PackageCollection packages = request.Result;
            
            // Check for collection-level errors
            if (packages.error != null)
            {
                Debug.LogError($"Collection error: {packages.error}");
                return;
            }            // Enumerate through packages
            foreach (PackageInfo package in packages)
            {
                Debug.Log($"Found package: {package.name} @ {package.version}");
            }
        }
    }
}
```

**Remarks**

- After the PackageCollection is created, it's immutable.
- Package enumeration order isn't guaranteed.
- Collection-level errors indicate issues with the overall package resolution, not with individual packages.
- The collection can contain direct dependencies and transitive dependencies.
- Use in conjunction with Client.List() to get an up-to-date view of project packages.

**Related information**

- PackageInfo
- Client.List
- ListRequest

### Properties

| Property | Description |
| --- | --- |
| error | The error associated with the package collection. |
