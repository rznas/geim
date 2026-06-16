<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UploadHandlerFile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A specialized UploadHandler that reads data from a given file and sends raw bytes to the server as the request body.

You can use it to send a large amount of data to the server with a low memory footprint.

```csharp
using System.Collections;
using UnityEngine;
using UnityEngine.Networking;public class UHFileSample : MonoBehaviour
{
    void Start()
    {
        StartCoroutine(UploadFileData());
    }    IEnumerator UploadFileData()
    {
        using (var uwr = new UnityWebRequest("https://yourwebsite.com/upload", UnityWebRequest.kHttpVerbPUT))
        {
            uwr.uploadHandler = new UploadHandlerFile("/path/to/file");
            yield return uwr.SendWebRequest();
            if (uwr.result != UnityWebRequest.Result.Success)
                Debug.LogError(uwr.error);
            else
            {
                // file data successfully sent
            }
        }
    }
}
```

### Constructors

| Constructor | Description |
| --- | --- |
| UploadHandlerFile | Create a new upload handler to send data from the given file to the server. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| contentType | Determines the default Content-Type header which will be transmitted with the outbound HTTP request. |
| data | The raw data which will be transmitted to the remote server as body data. (Read Only) |
| progress | Returns the proportion of data uploaded to the remote server compared to the total amount of data to upload. (Read Only) |

### Public Methods

| Method | Description |
| --- | --- |
| Dispose | Signals that this UploadHandler is no longer being used, and should clean up any resources it is using. |
