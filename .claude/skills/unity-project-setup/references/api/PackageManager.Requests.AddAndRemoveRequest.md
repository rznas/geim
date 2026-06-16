<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PackageManager.Requests.AddAndRemoveRequest.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents an asynchronous request to add package dependencies to the project, remove package dependencies from the project, or both.

The PackageManager Client class returns an AddAndRemoveRequest instance when you call the Client.AddAndRemove method to add or remove package dependencies in the project. Use this object to determine when the request is complete and to access the result.

 After the request completes, you can retrieve the PackageCollection instance from the Result property.

 **Dry run support:** When you call the Client.AddAndRemove method with `dryRun` set to `true`, the Package Manager simulates the add and remove operations without actually changing the project. The Result property contains the simulated final package state, which allows you to preview your changes as if `dryRun` was `false`.

```csharp
using UnityEngine;
using UnityEditor.PackageManager;
using UnityEditor.PackageManager.Requests;
[ExecuteInEditMode]
public class PackageManagerAddRemoveExample : MonoBehaviour
{
    AddAndRemoveRequest m_Request;
    
    void Start()
    {
        Debug.Log("Client.AddAndRemove example...");
        
        var packagesToAdd = new[] 
        { 
            "com.unity.textmeshpro",
            "com.unity.inputsystem"
        };
        
        var packagesToRemove = new[] 
        { 
            "com.unity.timeline" 
        };
        
        m_Request = Client.AddAndRemove(packagesToAdd, packagesToRemove);
    }    void Update()
    {
        if (m_Request != null && m_Request.IsCompleted)
        {
            if (m_Request.Status == StatusCode.Success)
            {
                Debug.Log("Packages updated successfully:");
            }
            else
            {
                Debug.LogError($"Operation failed: {m_Request.Error.message}");
            }
            m_Request = null;
        }
    }
}
```

**Related information**

- Client.AddAndRemove
- PackageCollection
- Request<T0>
- PackageInfo

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| Error | The error returned by the request, if any. |
| IsCompleted | Whether the request is complete. |
| Status | The request status. |
| Result | A property that provides access to the result of a completed Package Manager request operation. |
