<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.RadeonRaysContext.ReadBuffer.html
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

The memory that the BufferSlice<T0> points to can be transferred into a NativeArray<T0>. This is an asynchronous operation. Pass an EventID created with IDeviceContext.CreateEvent to track the completion status, if desired. This method returns immediately after enqueuing the command in the context.

**Note:** EventID is single-use. Once an EventID has been passed to this function, it may not be passed to subsequent IDeviceContext.WriteBuffer or IDeviceContext.ReadBuffer calls. Doing so will result in undefined behavior.

```csharp
using Unity.Collections;
using UnityEngine.LightTransport;IDeviceContext ctx = new RadeonRaysContext();
ctx.Initialize();
uint length = 8;
var input = new NativeArray<byte>((int)length, Allocator.Persistent);
for (int i = 0; i < length; ++i)
    input[i] = (byte)i;
var output = new NativeArray<byte>((int)length, Allocator.Persistent);
BufferID id = ctx.CreateBuffer(8);
var writeEvent = ctx.CreateEvent();
ctx.WriteBuffer(id.Slice<byte>(), input, writeEvent);
var readEvent = ctx.CreateEvent();
ctx.ReadBuffer(id.Slice<byte>(), output, readEvent);
bool flushOk = ctx.Flush();
Assert.IsTrue(flushOk);
bool eventOk = ctx.Wait(writeEvent);
Assert.IsTrue(eventOk);// Contents of the buffer is now available in the CPU side memory array output.input.Dispose();
Assert.IsTrue(ctx.IsCompleted(readEvent));
ctx.DestroyEvent(readEvent);
ctx.DestroyEvent(writeEvent);
ctx.DestroyBuffer(id);
for (int i = 0; i < length; ++i)
    Assert.AreEqual((byte)i, output[i]);
output.Dispose();
ctx.Dispose();
```

How to read back a buffer.
