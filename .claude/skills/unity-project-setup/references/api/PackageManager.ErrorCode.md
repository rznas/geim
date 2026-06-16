<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PackageManager.ErrorCode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An enumeration that defines the specific types of errors that can occur during Package Manager operations.

**Notes:**

- Use `ErrorCode` in conjunction with Error.message for detailed error information.
- Different operations can produce different error codes.

```csharp
using UnityEngine;
using UnityEditor.PackageManager;
using UnityEditor.PackageManager.Requests;[ExecuteInEditMode]
public class ErrorCodeExample : MonoBehaviour
{
    AddRequest m_AddRequest;
    
    void Start()
    {
        Debug.Log("Testing ErrorCode...");
        m_AddRequest = Client.Add("com.nonexistent.package");
    }
    void Update()
    {
        if (m_AddRequest != null && m_AddRequest.IsCompleted)
        {
            if (m_AddRequest.Status == StatusCode.Failure)
            {
                HandleError(m_AddRequest.Error);
            }
            m_AddRequest = null;
        }
    }
    
    void HandleError(Error error)
    {
        string userMessage = null;
        switch(error.errorCode)
        {
            case ErrorCode.NotFound:
                userMessage = $"Package not found: {error.message}";
                break;
            case ErrorCode.Conflict:
                userMessage = $"Package conflict detected: {error.message}";
                break;
            case ErrorCode.Forbidden:
                userMessage = $"Operation not permitted: {error.message}";
                break;
            case ErrorCode.Unknown:
                userMessage = $"Unknown error: {error.message}";
                break;
            case ErrorCode.InvalidParameter:
                userMessage = $"Invalid parameter: {error.message}";
                break;
            case ErrorCode.AggregateError:
                userMessage = $"One or multiple errors occurred: {error.message}";
                break;
			case ErrorCode.ConnectionError:
				userMessage = $"Network error occurred. Please check your internet connection or proxy settings.";
				break;
            default:
                userMessage = $"Unexpected error: {error.message}";
                break;
        };        Debug.LogError(userMessage);
    }
}
```

**Related information**

- Error
- Client
- StatusCode
- Request

### Properties

| Property | Description |
| --- | --- |
| Unknown | Operation resulted in an unknown error. |
| NotFound | A package required to fulfill the operation was not found. |
| Forbidden | Operation was not allowed. |
| InvalidParameter | Operation had invalid parameters. |
| Conflict | Conflicting package versions were found. |
| AggregateError | One or more errors occurred during the operation. |
| ConnectionError | Network error occurred during the operation. |
