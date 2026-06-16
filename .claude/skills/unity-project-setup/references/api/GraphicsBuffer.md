<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GraphicsBuffer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

GPU graphics data buffer, for working with geometry or compute shader data.

ComputeShader programs often need to read or write arbitrary data from or to memory buffers, and some rendering algorithms need a lower level access or control over geometry data than what is provided by the Mesh class. You can use `GraphicsBuffer` for these cases. You create the buffers from C# scripts, and then fill them with data using either C# scripts or compute shader programs.

A graphics buffer is similar to an array in C#, in that it has a number of elements (count) of the same size (stride). You must supply the intended buffer usage (target) when you create a GraphicsBuffer; for example, you must pass GraphicsBuffer.Target.Index for the buffer to be usable as a geometry index buffer.

When you have finished working with the buffer, you must manually release the GPU memory. You can do this using C# dispose pattern, or by calling Release.

Additional resources: Graphics.RenderPrimitivesIndexed, Graphics.RenderPrimitivesIndexedIndirect, Graphics.CopyBuffer, ComputeShader, Shader.SetGlobalBuffer, Material.SetBuffer.

### Properties

| Property | Description |
| --- | --- |
| bufferHandle | The internal handle of this GraphicsBuffer. Only valid until the buffer is disposed of. (Read Only) |
| count | Number of elements in the buffer (Read Only). |
| name | The debug label for the graphics buffer (setter only). |
| stride | Size of one element in the buffer. For index buffers, this must be either 2 or 4 bytes (Read Only). |
| target | Target, which specifies the intended target(s) of this GraphicsBuffer (Read Only). |
| usageFlags | The flags that specify how this GraphicsBuffer can be used or updated (Read Only). |

### Constructors

| Constructor | Description |
| --- | --- |
| GraphicsBuffer | Create a Graphics Buffer. |

### Public Methods

| Method | Description |
| --- | --- |
| GetData | Read data values from the buffer into an array. The array can only use blittable types. |
| GetNativeBufferPtr | Retrieve a native (underlying graphics API) pointer to the buffer. |
| IsValid | Returns true if this graphics buffer is valid, or false otherwise. |
| LockBufferForWrite | Begins a write operation to the buffer |
| Release | Release a Graphics Buffer. |
| SetCounterValue | Sets counter value of append/consume buffer. |
| SetData | Set the buffer with values from an array. |
| UnlockBufferAfterWrite | Ends a write operation to the buffer |

### Static Methods

| Method | Description |
| --- | --- |
| CopyCount | Copy the counter value of a GraphicsBuffer into another buffer. |
