<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PackageManager.Client.Remove.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| packageName | The name of the package to remove from the project. `ArgumentException` is thrown if `packageName` is `null` or empty. |

### Returns

**RemoveRequest** A RemoveRequest instance, which you can use to get the success or failure of the Remove operation.

### Description

Removes a package dependency from the project. Removing a dependency often leads to changing installed packages, but only after the Package Manager constructs a dependency graph to solve any version conflicts.

`Remove()` is an asynchronous operation. Before the operation completes, you can use the `RemoveRequest` instance to monitor the asynchronous operation.

**Note:** Make sure any other Client operations have completed before calling this method. For more information, refer to the note on the Client class reference page.

 For more information, refer to Dependency and resolution.

```csharp
using UnityEngine;
using UnityEditor.PackageManager;
using UnityEditor.PackageManager.Requests;
[ExecuteInEditMode]
public class PackageManagerClientRemoveExample : MonoBehaviour
{
    RemoveRequest m_RemoveRequest;
    
    void Start()
    {
        Debug.Log("Client.Remove example...");
        m_RemoveRequest = Client.Remove("com.unity.textmeshpro");
    }    void Update()
    {
        if (m_RemoveRequest != null && m_RemoveRequest.IsCompleted)
        {
            if (m_RemoveRequest.Status == StatusCode.Success)
            {
                Debug.Log("Package removed successfully");
            }
            else
            {
                Debug.LogError($"Remove failed: {m_RemoveRequest.Error.message}");
            }
            m_RemoveRequest = null;
        }
    }
}
```
