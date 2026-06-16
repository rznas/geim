<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UploadHandlerRaw-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| data | Raw data to transmit to the remote server. |

### Description

General constructor. Contents of the `input` argument are copied into a native buffer.

### Parameters

| Parameter | Description |
| --- | --- |
| data | The raw data to transmit to the remote server. |
| transferOwnership | When true, the upload handler takes ownership of the passed NativeArray. This means the upload handler will dispose of the NativeArray when the upload handler itself is disposed of. When false, NativeArray is owned by the caller and you must ensure it remains valid until the upload is complete. |

### Description

Creates an upload handler using NativeArray.

### Parameters

| Parameter | Description |
| --- | --- |
| data | The raw data to transmit to the remote server. |

### Description

Creates an upload handler using a read-only NativeArray. The passed array is owned by the caller and you must ensure it remains valid until the upload is complete.
