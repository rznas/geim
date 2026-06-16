<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.DownloadHandlerBuffer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A general-purpose DownloadHandler implementation which stores received data in a native byte buffer.

This is a general-purpose DownloadHandler subclass. It stores received data in native memory. It preallocates a data buffer based on any received `Content-Length` header, but expands its buffer if the actual download size exceeds the value of the `Content-Length` header (or if a `Content-Length` header is not received).

**Note**: When accessing DownloadHandler.data or DownloadHandler.text on this subclass, a new byte array or string is allocated each time the property is accessed.

```csharp
using UnityEngine;
using UnityEngine.Networking;
using System.Collections;
public class MyBehaviour : MonoBehaviour {
    void Start() {
        StartCoroutine(GetText());
    }    IEnumerator GetText() {
        UnityWebRequest www = new UnityWebRequest("https://www.my-server.com");
        www.downloadHandler = new DownloadHandlerBuffer();
        yield return www.SendWebRequest();        if (www.result != UnityWebRequest.Result.Success) {
            Debug.Log(www.error);
        }
        else {
            // Show results as text
            Debug.Log(www.downloadHandler.text);            // Or retrieve results as binary data
            byte[] results = www.downloadHandler.data;
        }
    }
}
```

### Constructors

| Constructor | Description |
| --- | --- |
| DownloadHandlerBuffer | Default constructor. |

### Static Methods

| Method | Description |
| --- | --- |
| GetContent | Returns a copy of the native-memory buffer interpreted as a UTF8 string. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| data | Returns the raw bytes downloaded from the remote server, or null. (Read Only) |
| error | Error message describing a failure that occurred inside the download handler. |
| isDone | Returns true if this DownloadHandler has been informed by its parent UnityWebRequest that all data has been received, and this DownloadHandler has completed any necessary post-download processing. (Read Only) |
| nativeData | Provides direct access to downloaded data. |
| text | Convenience property. Returns the bytes from data interpreted as a UTF8 string. (Read Only) |

### Public Methods

| Method | Description |
| --- | --- |
| Dispose | Signals that this DownloadHandler is no longer being used, and should clean up any resources it is using. |

### Protected Methods

| Method | Description |
| --- | --- |
| CompleteContent | Callback, invoked when all data has been received from the remote server. |
| GetData | Callback, invoked when the data property is accessed. |
| GetNativeData | Provides allocation-free access to the downloaded data as a NativeArray. |
| GetProgress | Callback, invoked when UnityWebRequest.downloadProgress is accessed. |
| GetText | Callback, invoked when the text property is accessed. |
| ReceiveContentLengthHeader | Callback, invoked with a Content-Length header is received. |
| ReceiveData | Callback, invoked as data is received from the remote server. |
