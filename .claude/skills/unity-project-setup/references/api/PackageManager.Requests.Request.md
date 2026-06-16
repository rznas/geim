<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PackageManager.Requests.Request.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Base class for all Package Manager asynchronous operations. Use this class to track the status and results of package operations, such as adding, removing, or updating packages.

- All Client (such as Client.Add, Client.Remove, and Client.List) return an object derived from the Request class.
- Check the `IsCompleted` property to know when the operation is done.
- Always check the `Status` property of the `Request` for a StatusCode of `Success` before accessing results to make sure the operation was successful.

```csharp
using UnityEngine;
using UnityEditor.PackageManager;
using UnityEditor.PackageManager.Requests;[ExecuteInEditMode]
public class RequestExample : MonoBehaviour
{
    ListRequest m_Request;
    
    void Start()
    {
        Debug.Log("Requesting packages list...");
        m_Request = Client.List();
    }    void Update()
    {
        if (m_Request != null && m_Request.IsCompleted)
        {
            if (m_Request.Status == StatusCode.Success)
            {
                foreach (var package in m_Request.Result)
                {
                    Debug.Log($"Package: {package.name} ({package.version})");
                }
            }
            else
            {
                Debug.Log($"Package list request failed: {m_Request.Error}");
            }
            m_Request = null;
        }
    }
}
```

**Related information**

- Client
- PackageInfo
- Error
- StatusCode

### Properties

| Property | Description |
| --- | --- |
| Error | The error returned by the request, if any. |
| IsCompleted | Whether the request is complete. |
| Status | The request status. |
