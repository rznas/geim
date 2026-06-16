<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.ReferenceContext.WriteBuffer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| dst | The BufferSlice to write to. |
| src | The array in the CPU memory that should be written to the buffer. The array must remain valid until the write operation is complete. |
| id | The ID of the event to use to track completion of the write. |

### Description

Write data into the memory buffer allocated by the context.

The ReferenceContext implementation of the WriteBuffer method is blocking and returns immediately after writing data into the underlying NativeArray.

**Note:** EventID is single-use. Once an EventID has been passed to this function, it may not be passed to subsequent IDeviceContext.WriteBuffer or IDeviceContext.ReadBuffer calls. Doing so will result in undefined behavior.
