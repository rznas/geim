<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.DownloadHandlerScript.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An abstract base class for custom, scriptable DownloadHandler implementations.

Derive from `DownloadHandlerScript` and override some or all of its callbacks to implement custom data handling for key events in the download process.

For example, override DownloadHandler.ReceiveData to implement custom handling when data arrives from the remote server and override DownloadHandler.ReceiveContentLengthHeader to implement custom handling when a Content-Length header is received.

The `UnityWebRequest` system permits the pre-allocation of a managed-code byte array, which is used to deliver downloaded data to the DownloadHandler.ReceiveData callback. Using this function eliminates managed-code memory allocation when using classes derived from `DownloadHandlerScript`-to capture downloaded data.

To make a `DownloadHandlerScript` operate with a pre-allocated managed buffer, supply a byte array to the ctor. The size of the byte array limits the amount of data that can be received in each `ReceiveData` call. If data arrives slowly, over many frames, the supplied byte array might be too small.

**Note**: The actual downloads occur on a worker thread, but all `DownloadHandlerScript` callbacks operate on the main thread. Avoid performing computationally heavy operations from these callbacks.

Additional resources: DownloadHandler.ReceiveData, DownloadHandler.ReceiveContentLengthHeader, DownloadHandler.CompleteContent.

```csharp
using UnityEngine;
using UnityEngine.Networking;public class LoggingDownloadHandler : DownloadHandlerScript {    // Standard scripted download handler - allocates memory on each ReceiveData callback    public LoggingDownloadHandler(): base() {
    }    // Pre-allocated scripted download handler
    // reuses the supplied byte array to deliver data.
    // Eliminates memory allocation.    public LoggingDownloadHandler(byte[] buffer): base(buffer) {
    }    // Required by DownloadHandler base class. Called when you address the 'bytes' property.    protected override byte[] GetData() { return null; }    // Called once per frame when data has been received from the network.    protected override bool ReceiveData(byte[] data, int dataLength) {
        if(data == null) {
            Debug.Log("LoggingDownloadHandler :: ReceiveData - received a null/empty buffer");
            return false;
        }        Debug.Log(string.Format("LoggingDownloadHandler :: ReceiveData - received {0} bytes", dataLength));
        return true;
    }    // Called when all data has been received from the server and delivered via ReceiveData.    protected override void CompleteContent() {
        Debug.Log("LoggingDownloadHandler :: CompleteContent - DOWNLOAD COMPLETE!");
    }    // Called when a Content-Length header is received from the server.    protected override void ReceiveContentLengthHeader(ulong contentLength) {
        Debug.Log(string.Format("LoggingDownloadHandler :: ReceiveContentLength - length {0}", contentLength));
    }
}
```

### Constructors

| Constructor | Description |
| --- | --- |
| DownloadHandlerScript | Create a DownloadHandlerScript which allocates new buffers when passing data to callbacks. |

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
