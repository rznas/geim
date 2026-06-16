<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.IDeviceContext.ReadBuffer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| src | The BufferSlice specifying the source data on the device. |
| dst | The destination array in CPU memory. Must remain valid until the operation completes. |
| id | Optional event ID to track completion of the read operation. |

### Description

Asynchronously copies data from a device buffer to host memory.

Initiates an asynchronous transfer of data from device memory to host memory. The method returns immediately after enqueuing the operation. Use Flush to ensure the operation begins executing, then use Wait or IsCompleted with the provided event to determine when the transfer is complete.

The destination NativeArray<T0> must remain allocated and unchanged until the read operation completes, as indicated by the event.

**Warning:** EventID instances are single-use. Do not reuse an event that has been passed to this method.

```csharp
// Read data from buffer with event tracking
using var outputData = new NativeArray<int>(1024, Allocator.Persistent);
var readEvent = context.CreateEvent();
context.ReadBuffer(bufferSlice, outputData, readEvent);// Start execution and wait for completion
context.Flush();
bool success = context.Wait(readEvent);
Assert.IsTrue(success);context.DestroyEvent(readEvent);
// outputData now contains the buffer contents
```
