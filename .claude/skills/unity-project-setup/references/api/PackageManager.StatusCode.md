<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PackageManager.StatusCode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This enumeration represents the status of a Package Manager operation.

- Always check the status code before accessing operation results.
- When status is `Failure`, examine the Error property for details.
- Operations remain `InProgress` until the `IsCompleted` property is `true`.

```csharp
using System;
using UnityEngine;
using UnityEditor.PackageManager;
using UnityEditor.PackageManager.Requests;[ExecuteInEditMode]
public class PackageManagerStatusCodeExample : MonoBehaviour
{
    AddRequest m_AddRequest;
    const string k_ValidPackageName = "com.unity.textmeshpro";
    
    void Start()
    {
        Debug.Log("Checking StatusCode during a request...");
        m_AddRequest = Client.Add(k_ValidPackageName);
    }    void Update()
    {
        if (m_AddRequest != null)
        {
            switch (m_AddRequest.Status)
            {
                case StatusCode.InProgress:
                    Debug.Log("Operation in progress...");
                    return;
                    
                case StatusCode.Success:
                    Debug.Log($"Successfully installed {k_ValidPackageName}");
                    m_AddRequest = null;
                    break;
                    
                case StatusCode.Failure:
                    Debug.LogError($"Operation failed: {m_AddRequest.Error.message}");
                    m_AddRequest = null;
                    break;
            }
        }
    }
}
```

**Related information**

- Client
- Error
- Request

### Properties

| Property | Description |
| --- | --- |
| InProgress | Package manager operation is in progress. |
| Success | Package manager operation completed successfully. |
| Failure | Package manager operation failed. |
