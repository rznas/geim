<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PackageManager.Client.Pack.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| packageFolder | Folder containing the package. `ArgumentException` is thrown if `packageFolder` is `null`, empty, or whitespace. |
| targetFolder | Folder where the Package Manager will write the GZip tarball file. The Package Manager will create this folder if it doesn't exist. `ArgumentException` is thrown if `targetFolder` is `null`, empty, or whitespace. |
| ownerOrgId | The ID of the organization that owns the package. `ArgumentException` is thrown if `ownerOrgId` is `null`, empty, or whitespace. |

### Returns

**PackRequest** A PackRequest instance, which you can use to get the PackOperationResult representing the path of the generated tarball from the `PackRequest.Result` property.

### Description

Creates a GZip tarball file from a package folder. The format and content of the file is the same as if the package was published to a package registry.

`Pack()` is an asynchronous operation. Before the operation is complete, you can use the `PackRequest` instance to monitor the asynchronous operation.

 **Note:** Make sure any other Client operations have completed before calling this method. For more information, refer to the note on the Client class reference page.

```csharp
using UnityEngine;
using UnityEditor.PackageManager;
using UnityEditor.PackageManager.Requests;[ExecuteInEditMode]
public class PackageManagerClientPackExample : MonoBehaviour
{
    PackRequest m_PackRequest;    void Start()
    {
        Debug.Log("Client.Pack example...");
        // Replace with your actual package folder, target output folder, and organization ID
        string packageFolder = "Packages/com.company.mypackage";
        string targetFolder = "Builds";
        string ownerOrgId = "1234567";        m_PackRequest = Client.Pack(packageFolder, targetFolder, ownerOrgId);
    }    void Update()
    {
        if (m_PackRequest != null && m_PackRequest.IsCompleted)
        {
            if (m_PackRequest.Status == StatusCode.Success)
            {
                Debug.Log($"Package successfully packed at: {m_PackRequest.Result.tarballPath}");
            }
            else
            {
                Debug.LogError($"Pack failed: {m_PackRequest.Error.message}");
            }            m_PackRequest = null;
        }
    }
}
```
