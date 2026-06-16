<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.DownloadHandler.ReceiveData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| data | A buffer containing unprocessed data, received from the remote server. |
| dataLength | The number of bytes in `data` which are new. |

### Returns

**bool** True if the download should continue, false to abort.

### Description

Callback, invoked as data is received from the remote server.

This callback is invoked on the main thread.

`ReceiveData` is called after data has arrived from the remote server and can be called multiple times per frame. The `data` argument contains the raw bytes received from the remote server, and `dataLength` indicates the length of new data in the data array.

`ReceiveData` requires a return value of either `true` or `false`. If you return `false`, the system immediately aborts the UnityWebRequest. If you return `true`, processing continues normally.

Data arriving from the remote server for a DownloadHandlerScript is kept in a temporary buffer. When there is unprocessed data in the buffer, this method is called once per frame to pass chunks of the data to the script. If multiple datagrams arrive within one frame, they are combined before being passed to this callback. The data byte array contains the received data.

When operating in non-preallocated mode, the system allocates a new byte array each time this callback is invoked. In this case, `data.Length` is equal to `dataLength`, and you can safely ignore the `dataLength` argument.

When operating in preallocated mode, the data argument will be the byte array passed in at construction time, and the dataLength argument indicates which bytes in the byte array are new.

**Important:** The system does not zero-out the array between calls.

For more information on allocation modes, refer to the constructor description for DownloadHandlerScript.
