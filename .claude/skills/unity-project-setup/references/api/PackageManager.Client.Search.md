<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PackageManager.Client.Search.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| packageIdOrName | The name or ID of the package. `ArgumentException` is thrown if `packageIdOrName` is `null` or empty. |
| offlineMode | Specifies whether or not the Package Manager requests the latest information about the project's packages from the remote Unity package registry. When `offlineMode` is `true`, the PackageInfo object returned by the Package Manager contains information obtained from the local package cache, which could be out of date. |

### Returns

**SearchRequest** A SearchRequest instance, which you can use to get the array of PackageInfo objects representing the packages matching the search criteria from the `SearchRequest.Result` property.

### Description

Searches for packages in the Unity Package Registry. Returns a SearchRequest object that provides access to matching packages.

This operation issues a request to the main Unity package registry.

 `Search()` is an asynchronous operation. Before the operation is complete, you can use the `SearchRequest` instance to monitor the asynchronous operation.

 
**Note:** Make sure any other Client operations complete before calling this method. For more information, refer to the note on the Client class reference page.

```csharp
using UnityEngine;
using UnityEditor.PackageManager;
using UnityEditor.PackageManager.Requests;
[ExecuteInEditMode]
public class PackageManagerClientSearchExample : MonoBehaviour
{
    SearchRequest m_SearchRequest;
    
    void Start()
    {
        Debug.Log("Client.Search example...");
        m_SearchRequest = Client.Search("com.unity.textmeshpro");
    }
    void Update()
    {
        if (m_SearchRequest != null && m_SearchRequest.IsCompleted)
        {
            if (m_SearchRequest.Status == StatusCode.Success)
            {
                var packages = m_SearchRequest.Result;
                
                if (packages.Length > 0)
                {
                    var package = packages[0];
                    Debug.Log($"Found package: {package.name}" +
                        $"\nVersion: {package.version}" +
                        $"\nDescription: {package.description}");
                }
                else
                {
                    Debug.Log("No packages found");
                }
            }
            else
            {
                Debug.LogError($"Search failed: {m_SearchRequest.Error.message}");
            }
            m_SearchRequest = null;
        }
    }
}
```

**Related information**

- SearchRequest
- PackageInfo
- Client
