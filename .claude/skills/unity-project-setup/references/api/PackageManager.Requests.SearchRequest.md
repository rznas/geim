<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PackageManager.Requests.SearchRequest.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents an asynchronous request to find a package.

The PackageManager Client class returns a SearchRequest instance when you call the Client.Search method to find a package or the Client.SearchAll method to find all discoverable packages. Use this object to determine when the request is complete and to access the result.

 After the request completes, you can retrieve the array of PackageInfo instances from the Result property.

```csharp
using UnityEngine;
using UnityEditor.PackageManager;
using UnityEditor.PackageManager.Requests;
[ExecuteInEditMode]
public class PackageManagerSearchExample : MonoBehaviour
{
    SearchRequest m_SearchRequest;
    
    void Start()
    {
        Debug.Log("SearchRequest example...");
        m_SearchRequest = Client.Search("com.unity.textmeshpro");
    }    void Update()
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

- Client.Search
- PackageCollection
- Request<T0>
- PackageInfo

### Properties

| Property | Description |
| --- | --- |
| PackageIdOrName | The package id or name used in this search operation. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| Error | The error returned by the request, if any. |
| IsCompleted | Whether the request is complete. |
| Status | The request status. |
| Result | A property that provides access to the result of a completed Package Manager request operation. |
