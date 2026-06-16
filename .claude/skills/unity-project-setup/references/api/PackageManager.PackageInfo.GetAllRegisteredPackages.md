<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PackageManager.PackageInfo.GetAllRegisteredPackages.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**PackageInfo[]** The array of PackageInfo instances describing each package.

### Description

Retrieves information about all packages that are currently loaded.

- The results include all packages in the current project, regardless of the package source.
- This method returns cached information, which might not reflect recent changes.
- This method is more efficient than Client.List for quick package checks.

```csharp
using UnityEngine;
using UnityEditor.PackageManager;
[ExecuteInEditMode]
public class PackageManagerRegisteredExample : MonoBehaviour
{
    void Start()
    {
        Debug.Log("GetAllRegisteredPackages example...");
        ListRegisteredPackages();
    }    void ListRegisteredPackages()
    {
        PackageInfo[] packages = PackageInfo.GetAllRegisteredPackages();        Debug.Log($"Found {packages.Length} registered packages:");        foreach (var package in packages)
        {
            Debug.Log($"- {package.name}" +
                $"\n  Version: {package.version}" +
                $"\n  Source: {package.source}");
        }
    }
}
```

**Related information**

- Client.List
- PackageSource
- PackageInfo
