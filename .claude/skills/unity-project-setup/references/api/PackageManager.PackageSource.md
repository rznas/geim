<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PackageManager.PackageSource.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This enumeration indicates the source from which a package was installed.

- The source information can help you determine how a package was installed and how it can be updated.
- You can modify embedded and local packages.

```csharp
using System;
using UnityEngine;
using UnityEditor.PackageManager;
using UnityEditor.PackageManager.Requests;[ExecuteInEditMode]
public class PackageSourceExample : MonoBehaviour
{
    ListRequest m_ListRequest;
    
    void Start()
    {
        Debug.Log("Listing packages and getting their source...");
        m_ListRequest = Client.List();
    }    void Update()
    {
        if (m_ListRequest != null && m_ListRequest.IsCompleted)
        {
            if (m_ListRequest.Status == StatusCode.Success)
            {
                foreach (var package in m_ListRequest.Result)
                {
                    Debug.Log($"{package.name}: {package.source}");
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
- Client
- Embedded dependencies

### Properties

| Property | Description |
| --- | --- |
| Unknown | The package source is unknown. |
| Registry | The package is from a registry. |
| BuiltIn | The package is built-in and part of Unity. |
| Embedded | The package is embedded in the Unity project. |
| Local | The package is referenced by a local path. |
| Git | The package is referenced directly by a Git URL. |
| LocalTarball | The package is referenced by a local path pointing to a GZip tarball file. |
