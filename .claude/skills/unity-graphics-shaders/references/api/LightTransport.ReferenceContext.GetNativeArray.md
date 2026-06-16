<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.ReferenceContext.GetNativeArray.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | ID of the buffer to get the underlying NativeArray from. |

### Returns

**NativeArray<byte>** The NativeArray of bytes for a given BufferID.

### Description

Get the NativeArray used for storing buffers in the context.

The reference context is using NativeArray for storing the contents of buffers. This method will return the array.
