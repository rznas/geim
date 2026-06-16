<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.DownloadHandlerScript-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Create a DownloadHandlerScript which allocates new buffers when passing data to callbacks.

This default constructor places this DownloadHanderScript into *non-preallocated mode*. This affects the operation of the ReceiveData callback.

When in non-preallocated mode, a new managed byte array will be allocated each time ReceiveData is called, and the length of the array passed to ReceiveData will always be equal to the number of new bytes available for consumption.

This is convenient, but may cause undesirable garbage collection. If your use case requires an implementation which avoids unnecessary garbage collection, use preallocated mode instead.

### Parameters

| Parameter | Description |
| --- | --- |
| preallocatedBuffer | A byte buffer into which data will be copied, for use by DownloadHandler.ReceiveData. |

### Description

Create a DownloadHandlerScript which reuses a preallocated buffer to pass data to callbacks.

This constructor places this DownloadHandlerScript into *preallocated mode*. This affects the operation of the DownloadHandler.ReceiveData callback.

When in preallocated mode, the `preallocatedBuffer` byte array will be repeatedly reused to pass data to the DownloadHandler.ReceiveData callback, instead of allocating new buffers each time. The system will not zero-out the array between uses, so the `dataLength` argument to DownloadHandler.ReceiveData must be used to discover which bytes are new.

When in this mode, the DownloadHandlerScript will not allocate any memory during the download or processing of HTTP response data. If your use case is sensitive to garbage collection, usage of preallocated mode is recommended.
