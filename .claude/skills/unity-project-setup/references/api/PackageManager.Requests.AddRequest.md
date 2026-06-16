<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PackageManager.Requests.AddRequest.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents an asynchronous request to add a package to the project.

The PackageManager Client class returns an AddRequest instance when you call the Client.Add method to add a package to your project. Use this object to determine when the request is complete and to access the result.

 Once the request comsplete, you can retrieve the PackageInfo instance from the Result property.

```csharp
using UnityEngine;
using UnityEditor.PackageManager;
using UnityEditor.PackageManager.Requests;
[ExecuteInEditMode]
public class PackageManagerAddExample : MonoBehaviour
{
    AddRequest m_AddRequest;
    
    void Start()
    {
        Debug.Log("Client.Add example...");
        m_AddRequest = Client.Add("com.unity.textmeshpro");
    }    void Update()
    {
        if (m_AddRequest != null && m_AddRequest.IsCompleted)
        {
            if (m_AddRequest.Status == StatusCode.Success)
            {
                var package = m_AddRequest.Result;
                Debug.Log($"Added package: {package.name}" +
                    $"\nVersion: {package.version}" +
                    $"\nDisplay name: {package.displayName}");
            }
            else
            {
                Debug.LogError($"Add failed: {m_AddRequest.Error.message}");
            }
            m_AddRequest = null;
        }
    }
}
```

**Related information**

- Client.Add
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
