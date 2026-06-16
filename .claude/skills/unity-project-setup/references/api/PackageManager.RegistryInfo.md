<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PackageManager.RegistryInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Contains information about the package registry from which a package was installed, including the registry name and URL.

- You can get a `RegistryInfo` instance from the `registry` property of a PackageInfo object.
- Each package in your project tracks which registry it came from.
- Custom scoped registries can be configured in your project settings.
- The default Unity registry cannot be removed or modified.

```csharp
using System;
using UnityEngine;
using UnityEditor.PackageManager;
using UnityEditor.PackageManager.Requests;[ExecuteInEditMode]
public class RegistryInfoExample : MonoBehaviour
{
    ListRequest m_ListRequest;
    
    void Start()
    {
        Debug.Log("Listing packages and getting their registry info...");
        m_ListRequest = Client.List();
    }    void Update()
    {
        if (m_ListRequest != null && m_ListRequest.IsCompleted)
        {
            if (m_ListRequest.Status == StatusCode.Success)
            {
                foreach (var package in m_ListRequest.Result)
                {
                    Debug.Log($"Registry info for {package.name}:\n" +
                        $"- Registry name: {package.registry.name}\n" +
                        $"- Registry URL: {package.registry.url}\n" +
                        $"- Is default registry: {package.registry.isDefault}");
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
- Scoped Registry Configuration

### Properties

| Property | Description |
| --- | --- |
| isDefault | Whether this is the default, Unity registry or one of the scoped registries configured in the project manifest. |
| name | The registry name. |
| url | The registry URL. |
