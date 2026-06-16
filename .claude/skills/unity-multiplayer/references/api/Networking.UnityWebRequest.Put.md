<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UnityWebRequest.Put.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| uri | The URI to which the data will be sent. |
| bodyData | The data to transmit to the remote server.  If a string, the string will be converted to raw bytes via [System.Text.Encoding.UTF8](https://msdn.microsoft.com/en-us/library/system.text.encoding.utf8). |

### Returns

**UnityWebRequest** A UnityWebRequest configured to transmit `bodyData` to `uri` via HTTP PUT.

### Description

Creates a UnityWebRequest configured to upload raw data to a remote server via HTTP PUT.

This method creates a UnityWebRequest, sets the target URL to the string `uri` argument and the `method` to `PUT`. It also sets the `Content-Type` header to `application/octet-stream`.

This method attaches a standard DownloadHandlerBuffer to the UnityWebRequest. This is for convenience during development, as well as for applications which return status information regarding the uploaded data in the HTTP response body.

This method stores the input upload data in an UploadHandlerRaw object and attaches it to the UnityWebRequest. UploadHandlerRaw copies the input data into a buffer. Therefore, changes to the `bodyData` array performed after the call to this method will not be reflected in the data sent to the server.

```csharp
using UnityEngine;
using UnityEngine.Networking;
using System.Collections;public class MyBehavior : MonoBehaviour
{
    void Start()
    {
        StartCoroutine(Upload());
    }    IEnumerator Upload()
    {
        byte[] myData = System.Text.Encoding.UTF8.GetBytes("This is some test data");
        using (UnityWebRequest www = UnityWebRequest.Put("https://www.my-server.com/upload", myData))
        {
            yield return www.SendWebRequest();            if (www.result != UnityWebRequest.Result.Success)
            {
                Debug.Log(www.error);
            }
            else
            {
                Debug.Log("Upload complete!");
            }
        }
    }
}
```
