<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.ReferenceContext.ReadBuffer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| src | The BufferSlice to read from. |
| dst | The array in the CPU memory that the contents of the buffer should be written to. The array must remain valid until the read operation is complete. Related content: IDeviceContext.Wait. |
| id | The ID of the event to use to track completion of the read. |

### Description

Read contents of a buffer from the context.

The memory that the BufferSlice points to can be transferred into a NativeArray<T0>. On the reference context this method is equivalent to ReferenceContext.GetNativeArray because they both finish the read immediately without the need for synchronization.

**Note:** EventID is single-use. Once an EventID has been passed to this function, it may not be passed to subsequent IDeviceContext.WriteBuffer or IDeviceContext.ReadBuffer calls. Doing so will result in undefined behavior.
