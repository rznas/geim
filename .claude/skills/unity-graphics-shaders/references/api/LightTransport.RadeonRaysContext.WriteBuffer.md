<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.RadeonRaysContext.WriteBuffer.html
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

This is an asynchronous operation. Pass an EventID created with IDeviceContext.CreateEvent to track the completion status, if desired. The WriteBuffer method returns immediately after enqueuing the command in the context.

**Note:** EventID is single-use. Once an EventID has been passed to this function, it may not be passed to subsequent IDeviceContext.WriteBuffer or IDeviceContext.ReadBuffer calls. Doing so will result in undefined behavior.

```csharp
using Unity.Collections;
using UnityEngine;
using UnityEngine.LightTransport;IDeviceContext ctx = new RadeonRaysContext();
ctx.Initialize();
uint length = 8;
var input = new NativeArray<byte>((int)length, Allocator.Persistent);
for (int i = 0; i < length; ++i)
    input[i] = (byte)i;
BufferID id = ctx.CreateBuffer(8);
var writeEvent = ctx.CreateEvent();
ctx.WriteBuffer(id.Slice<byte>(), input, writeEvent);
bool flushOk = ctx.Flush();
Assert.IsTrue(flushOk);
bool eventOk = ctx.Wait(writeEvent);
Assert.IsTrue(eventOk);
ctx.DestroyEvent(writeEvent);// The contents of the input buffer has now been transferred into the buffer allocated by the context.input.Dispose();
ctx.DestroyBuffer(id);
ctx.Dispose();
```
