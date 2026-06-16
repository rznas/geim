<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PackageManager.PackageInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Structure describing a Unity package.

A reference to a package in a registry, a revision of a source repository, a resource on the internet, or a package available on disk.

```csharp
using UnityEngine;
using UnityEditor.PackageManager;
using UnityEditor.PackageManager.Requests;
[ExecuteInEditMode]
public class PackageInfoExample : MonoBehaviour
{
    ListRequest m_ListRequest;    void Start()
    {
        Debug.Log("Listing packages to get PackageInfo...");
        m_ListRequest = Client.List();
    }
    void Update()
    {
        if (m_ListRequest != null && m_ListRequest.IsCompleted)
        {
            if (m_ListRequest.Status == StatusCode.Success)
            {
                foreach (var packageInfo in m_ListRequest.Result)
                {
                    Debug.Log($"Package Name: {packageInfo.name}");
                    Debug.Log($"Package Display Name: {packageInfo.displayName}");
                    // etc.
                }
            }
            else
            {
                Debug.Log($"Package list request failed: {m_ListRequest.Error}");
            }
            m_ListRequest = null;
        }
    }
}
```

- Request
- Error
- StatusCode

### Properties

| Property | Description |
| --- | --- |
| assetPath | The asset path of the package in the AssetDatabase. |
| author | An AuthorInfo instance of the author of the package. |
| category | Category of the package. |
| changelogUrl | The custom URL for the changelog for the package. |
| datePublished | The date and time at which the package was published. |
| dependencies | An array of DependencyInfos listing all the packages this package directly depends on. |
| deprecationMessage | Deprecation message for the version that this instance represents. |
| description | Detailed description of the package. |
| displayName | Friendly display name of the package. |
| documentationUrl | The custom URL for documentation for the package. |
| errors | The errors associated with the package. |
| git | A GitInfo instance providing detailed information for a Git package. |
| isDeprecated | Set to `true` if the package version that this instance represents is deprecated. |
| isDirectDependency | If the package is a direct dependency of the project. |
| keywords | An array of keywords associated with the package. |
| licensesUrl | The custom URL for the licenses of a package. |
| name | A read-only string property that contains the unique name of a package. |
| packageId | A read-only string property that provides the full package identifier, including the package name and version. For example, "com.unity.textmeshpro@3.0.6". |
| registry | The registry where the Package Manager might find this package. |
| repository | A RepositoryInfo instance containing information the repository that the package is hosted on. |
| resolvedDependencies | An array of DependencyInfo instances listing all the packages this package directly or indirectly depends on and the versions they resolved to. |
| resolvedPath | The local path of the package on disk. |
| source | Source of the package contents. |
| type | Type of the package. |
| version | Version of the package. |
| versions | A VersionsInfo instance containing information about the available versions of the package. |

### Static Methods

| Method | Description |
| --- | --- |
| FindForAssembly | Retrieves information about the package containing an assembly, or the assembly definition used to build that assembly. |
| FindForAssetPath | Retrieves information about the package containing an asset based on the path of that asset. |
| FindForPackageName | Retrieves information about the package based on the name of that package. |
| GetAllRegisteredPackages | Retrieves information about all packages that are currently loaded. |
| IsPackageRegistered | Checks if a specific package is registered with the UnityEditor.AssetDatabase. |
