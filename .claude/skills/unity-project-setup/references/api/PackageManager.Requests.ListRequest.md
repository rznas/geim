<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PackageManager.Requests.ListRequest.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents an asynchronous request to list the packages in the project.

The PackageManager Client class returns a ListRequest instance when you call the Client.List method to list the package dependencies of your project. Use this object to determine when the request is complete and to access the result.

 After the request completes, you can retrieve the PackageCollection instance from the Result property.

```csharp
using UnityEngine;
using UnityEditor.PackageManager;
using UnityEditor.PackageManager.Requests;
[ExecuteInEditMode]
public class ListRequestExample : MonoBehaviour
{
    ListRequest m_ListRequest;
    
    void Start()
    {
        Debug.Log("Listing packages...");
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
                    Debug.Log($"{package.name}");
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

- Client.List
- PackageCollection
- PackageInfo
- Request<T0>

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| Error | The error returned by the request, if any. |
| IsCompleted | Whether the request is complete. |
| Status | The request status. |
| Result | A property that provides access to the result of a completed Package Manager request operation. |
