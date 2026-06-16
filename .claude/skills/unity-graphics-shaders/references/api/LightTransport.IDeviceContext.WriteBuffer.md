<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.IDeviceContext.WriteBuffer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| dst | The BufferSlice specifying the destination on the device. |
| src | The source array in CPU memory. Must remain valid until the operation completes. |
| id | Optional event ID to track completion of the write operation. |

### Description

Asynchronously copies data from host memory to a device buffer.

Initiates an asynchronous transfer of data from host memory to device memory. The method returns immediately after enqueuing the operation. Use Flush to ensure the operation begins executing, then use Wait or IsCompleted with the provided event to determine when the transfer is complete.

The source NativeArray<T0> must remain allocated and unchanged until the write operation completes, as indicated by the event.

**Warning:** EventID instances are single-use. Do not reuse an event that has been passed to this method.

```csharp
// Prepare data and write to buffer
using var inputData = new NativeArray<float>(512, Allocator.Persistent);
for (int i = 0; i < inputData.Length; i++)
    inputData[i] = i * 0.5f;var writeEvent = context.CreateEvent();
context.WriteBuffer(bufferSlice, inputData, writeEvent);
context.Flush();// Wait for write to complete before using the buffer
context.Wait(writeEvent);
context.DestroyEvent(writeEvent);
```
