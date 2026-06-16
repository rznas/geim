<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PackageManager.VersionsInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Contains information about available versions of a package, including compatible, latest, and recommended versions.

- Version strings follow semantic versioning, whose format is `Major.Minor.Patch`. For example, "1.2.3"
- The recommended version might differ from the latest version, based on Unity Editor version compatibility.

```csharp
using System;
using UnityEngine;
using UnityEditor.PackageManager;
using UnityEditor.PackageManager.Requests;[ExecuteInEditMode]
public class PackageVersionsInfoExample : MonoBehaviour
{
    SearchRequest m_Request;
    
    void Start()
    {
        Debug.Log("Getting package versions...");
        m_Request = Client.Search("com.unity.textmeshpro");
    }    void Update()
    {
        if (m_Request != null && m_Request.IsCompleted)
        {
            if (m_Request.Status == StatusCode.Success)
            {
                var package = m_Request.Result[0];
                var versions = package.versions;
                
                Debug.Log($"Version info for {package.name}:");
                Debug.Log($"- Latest version: {versions.latest}");
                Debug.Log($"- Compatible version: {string.Join(", ", versions.compatible) }");
                Debug.Log($"- Recommended version: {versions.recommended}");
                    
                Debug.Log("All available versions:");
                foreach (var version in versions.all)
                {
                    Debug.Log($"- {version}");
                }
            }
            else
            {
                Debug.Log($"Package search request failed: {m_Request.Error}");
            }
            m_Request = null;
        }
    }
}
```

**Related information**

- PackageInfo
- Client.Search
- [Semantic Versioning](https://www.semver.org)

### Properties

| Property | Description |
| --- | --- |
| all | All available versions of the package. |
| compatible | Versions of the package compatible with the current version of Unity. |
| deprecated | Versions of the package that are deprecated. |
| latest | Latest version of the package. |
| latestCompatible | Latest version of the package compatible with the current version of Unity. |
| recommended | A version of the package recommended to use with the current version of Unity. If there is no recommended version, then this property is an empty string. |
