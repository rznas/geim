<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.DownloadHandlerFile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Download handler for saving the downloaded data to file.

This specialized download handler writes all downloaded bytes directly to file. This can help avoid high memory usage.

You can't retrieve data from this download handler. Instead, you work with the resulting file when the download is complete.

```csharp
using System.Collections;
using System.IO;
using UnityEngine;
using UnityEngine.Networking;public class FileDownloader : MonoBehaviour {    void Start () {
        StartCoroutine(DownloadFile());
    }    IEnumerator DownloadFile() {
        var uwr = new UnityWebRequest("https://unity3d.com/", UnityWebRequest.kHttpVerbGET);
        string path = Path.Combine(Application.persistentDataPath, "unity3d.html");
        uwr.downloadHandler = new DownloadHandlerFile(path);
        yield return uwr.SendWebRequest();
        if (uwr.result != UnityWebRequest.Result.Success)
            Debug.LogError(uwr.error);
        else
            Debug.Log("File successfully downloaded and saved to " + path);
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| removeFileOnAbort | Should the created file be removed if download is aborted (manually or due to an error). Default: false. |

### Constructors

| Constructor | Description |
| --- | --- |
| DownloadHandlerFile | Creates a new instance and a file on disk where downloaded data will be written to. |

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
