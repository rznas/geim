<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PackageManager.RepositoryInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Information about a repository that contains the source code of a package, including the repository type and URL.

- This information is used mostly with Git repositories.
- All the properties can be null, for example when the repository information is not provided.

```csharp
using UnityEngine;
using UnityEditor.PackageManager;
using UnityEditor.PackageManager.Requests;[ExecuteInEditMode]
public class PackageRepositoryInfoExample : MonoBehaviour
{
    ListRequest m_ListRequest;
    
    void Start()
    {
        Debug.Log("Listing packages and getting their repository info...");
        m_ListRequest = Client.List();
    }
    void Update()
    {
        if (m_ListRequest != null && m_ListRequest.IsCompleted)
        {
            if (m_ListRequest.Status == StatusCode.Success)
            {
                foreach (var package in m_ListRequest.Result)
                {
                    var outputString = $"Dependencies for {package.name}:";
                    if (package.repository != null)
                    {
                        Debug.Log($"Repository info for {package.name}:" +
                            $"\n- Type: {package.repository.type}" +
                            $"\n- URL: {package.repository.url}" +
                            (string.IsNullOrEmpty(package.repository.revision) ? "" : $"\n- Revision: {package.repository.revision}"));
                    }
                }
            }
            m_ListRequest = null;
        }
    }
}
```

**Related information**

- PackageInfo
- GitInfo
- Package Manifest

### Properties

| Property | Description |
| --- | --- |
| path | The relative path to the package root in the repository, if it is different from the repository root. |
| revision | The revision id corresponding to the package version. |
| type | The type of the repository, e.g. git. |
| url | The url to the source code repository. |
