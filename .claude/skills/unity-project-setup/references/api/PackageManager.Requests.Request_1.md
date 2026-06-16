<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PackageManager.Requests.Request_1.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Tracks the state of an asynchronous Unity Package Manager (Upm) server operation that returns a non-empty response.

A generic base class for Package Manager operations that return a result of type T. This class extends the base Request class to provide type-safe access to operation results.

**Notes:**

- Access `Result` only after checking `IsCompleted` and `Status`.
- Common type parameters include PackageInfo, PackageCollection, and PackageInfo[].

```csharp
using UnityEngine;
using UnityEditor.PackageManager;
using UnityEditor.PackageManager.Requests;[ExecuteInEditMode]
public class TypedRequestExample : MonoBehaviour
{
    Request<PackageInfo[]> m_GenericRequest;
    
    void Start()
    {
        Debug.Log("Searching packages with a typed request...");
        m_GenericRequest = Client.Search("com.unity.textmeshpro");
    }
    void Update()
    {
        if (m_GenericRequest != null && m_GenericRequest.IsCompleted)
        {
            if (m_GenericRequest.Status == StatusCode.Success)
            {
                var packages = m_GenericRequest.Result;
                
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
                Debug.LogError($"Search failed: {m_GenericRequest.Error.message}");
            }
            m_GenericRequest = null;
        }
    }
}
```

**Related information**

- PackageInfo
- Client
- StatusCode
- Request

### Properties

| Property | Description |
| --- | --- |
| Result | A property that provides access to the result of a completed Package Manager request operation. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| Error | The error returned by the request, if any. |
| IsCompleted | Whether the request is complete. |
| Status | The request status. |
