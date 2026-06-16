<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PackageManager.GitInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Identifies a specific revision for a Git package using a Git commit hash.

- Available only for packages installed from Git repositories.
- The hash property always contains the full commit hash.
- The revision property can contain a branch name, tag, or commit hash, depending on how the package was installed.

```csharp
using System;
using UnityEngine;
using UnityEditor.PackageManager;
using UnityEditor.PackageManager.Requests;[ExecuteInEditMode]
public class PackageGitInfoExample : MonoBehaviour
{
    ListRequest m_ListRequest;
    
    void Start()
    {
        Debug.Log("Listing packages and looking for a git package...");
        m_ListRequest = Client.List();
    }    void Update()
    {
        if (m_ListRequest != null && m_ListRequest.IsCompleted)
        {
            if (m_ListRequest.Status == StatusCode.Success)
            {
                foreach (var package in m_ListRequest.Result)
                {
                    if (package.git != null)
                    {
                        Debug.Log($"Git package found: {package.name}");
                        Debug.Log($"- Repository: {package.repository.url}");
                        Debug.Log($"- Revision: {package.git.revision}");
                        Debug.Log($"- Commit Hash: {package.git.hash}");
                    }
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

**Related information**

- PackageInfo
- Client.List
- Package Manager Git URLs

### Properties

| Property | Description |
| --- | --- |
| hash | Returns the resolved Git commit hash for the requested revision for this package. |
| revision | Returns the requested Git revision for the Git package. |
