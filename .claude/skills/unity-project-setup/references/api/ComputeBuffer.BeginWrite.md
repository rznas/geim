<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ComputeBuffer.BeginWrite.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| computeBufferStartIndex | Offset in number of elements to which the write operation will occur |
| count | Maximum number of elements which will be written |

### Returns

**NativeArray<T>** A NativeArray of size count

### Description

Begins a write operation to the buffer

Use this to begin a write operation on the buffer. Using this method results in fewer memory copies than using ComputeBuffer.SetData, and is therefore faster. For compatibility reasons, you can only call this method on buffers where the ComputeBufferMode is ComputeBufferMode.SubUpdates. If you call this method on a buffer with a different ComputeBufferMode, Unity will throw an exception.

The returned native array points directly to GPU memory if possible. If it it not possible to write directly to GPU memory, the returned native array points to a temporary buffer in CPU memory. Whether it is possible to write directly to GPU memory depends on many factors, including buffer mode, active graphics device, and hardware support.

Because of this, the contents of the returned array are not guaranteed to reflect the data content of the GPU side buffer. You should therefore use the returned array only for writing to, and not for reading from.

When you have written to the array, call ComputeBuffer.EndWrite to complete the operation and mark the returned NativeArray as unusable.

The performance of this method will vary depending on whether it can write directly to GPU memory or not, but it will always result in fewer memory copies than using SetData.

The data written to the returned native array must follow the data layout rules of the graphics API in use. See Compute Shaders for cross-platform compatibility information.

Additional resources: ComputeBuffer.SetData, ComputeBuffer.EndWrite
