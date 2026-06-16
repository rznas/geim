<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PackageManager.Error.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Contains information about errors that occur during Package Manager operations, including the error message and error code.

Common error codes include:

- NotFound: The requested package was not found.
- InvalidParameter: An invalid parameter was provided.
- Conflict: A conflict occurred during the operation.
- Unknown: An unspecified error occurred.

```csharp
using System;
using UnityEngine;
using UnityEditor.PackageManager;
using UnityEditor.PackageManager.Requests;[ExecuteInEditMode]
public class PackageManagerErrorExample : MonoBehaviour
{
    AddRequest m_AddRequest;
    const string k_InvalidPackageName = "this is not a proper package name";
    
    void Start()
    {
        Debug.Log("Create error condition during Package Manager request...");
        m_AddRequest = Client.Add(k_InvalidPackageName);
    }    void Update()
    {
        if (m_AddRequest != null && m_AddRequest.IsCompleted)
        {
            if (m_AddRequest.Status == StatusCode.Failure)
            {
                HandleError(m_AddRequest.Error);
            }
            else
            {
                Debug.Log($"Successfully installed {k_InvalidPackageName}");
            }            m_AddRequest = null;
        }
    }
    
    void HandleError(Error error)
    {
        switch (error.errorCode)
        {
            case ErrorCode.NotFound:
                Debug.LogError($"Package not found: {error.message}");
                break;
                
            case ErrorCode.InvalidParameter:
                Debug.LogError($"Invalid parameter: {error.message}");
                break;
                
            case ErrorCode.Conflict:
                Debug.LogError($"Package conflict: {error.message}");
                break;
                
            default:
                Debug.LogError($"Package operation failed: {error.message}");
                break;
        }
    }
}
```

**Related information**

- Client
- StatusCode
- Request

### Properties

| Property | Description |
| --- | --- |
| errorCode | Numerical error code. |
| message | Error message or description. |
