<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PackageManager.PackageInfo.FindForAssetPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assetPath | The project-relative path to the asset (for example, "Packages/com.company.mypackage/Scripts/MyScript.cs"). |

### Returns

**PackageInfo** The PackageInfo instance describing the package, or null if the asset is not in a package.

### Description

Retrieves information about the package containing an asset based on the path of that asset.

This method works for assets residing inside the 'Packages/' folder and belonging to the following package types:

- Embedded packages
- Registry packages
- Git packages
- Local packages
- Built-in packages

This method doesn't work for assets inside the 'Assets/' folder (such as imported Asset Store packages or project-specific assets).

```csharp
using UnityEditor;
using UnityEngine;
using PackageInfo = UnityEditor.PackageManager.PackageInfo;public class FindPackageForAssetExample
{
    [MenuItem("Tools/Find Package For Asset Example")]
    public static void RunExample()
    {
        string assetPath = "Packages/com.unity.modules.physics/Physics.cs"; // Change as needed
        PackageInfo info = PackageInfo.FindForAssetPath(assetPath);        if (info != null)
        {
            Debug.Log($"Asset '{assetPath}' is part of package: {info.name} ({info.source})");
            Debug.Log($"Display Name: {info.displayName}");
            Debug.Log($"Version: {info.version}");
        }
        else
        {
            Debug.Log($"Asset '{assetPath}' is not part of any package.");
        }
    }
}
```
