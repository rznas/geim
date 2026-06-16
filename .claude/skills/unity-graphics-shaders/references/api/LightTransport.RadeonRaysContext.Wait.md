<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.RadeonRaysContext.Wait.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | ID of the event. |

### Returns

**bool** Returns true of the event completed successfully.

### Description

Wait for an asynchronous event.

This is a blocking method which stalls the current CPU thread until the operation represented by the EventID is complete. Adding a stall can have a significant performance impact during regular execution. To avoid stalls, call IDeviceContext.Wait at the end of your sequence of operations.

```csharp
using Unity.Collections;
using UnityEngine;
using UnityEngine.LightTransport;IDeviceContext ctx = new RadeonRaysContext();
ctx.Initialize();
uint length = 8;
var input = new NativeArray<byte>((int)length, Allocator.Persistent);
for (int i = 0; i < length; ++i)
    input[i] = (byte)i;
var output = new NativeArray<byte>((int)length, Allocator.Persistent);
BufferID id = ctx.CreateBuffer(length, 1);
var writeEvent = ctx.CreateEvent();
ctx.WriteBuffer(id.Slice<byte>(), input, writeEvent);
var readEvent = ctx.CreateEvent();
ctx.ReadBuffer(id.Slice<byte>(), output, readEvent);
bool flushOk = ctx.Flush();
Debug.Assert(flushOk);
bool eventOk = ctx.Wait(writeEvent);
Debug.Assert(eventOk);// The event has completed.input.Dispose();
Assert.IsTrue(ctx.IsCompleted(readEvent));
ctx.DestroyEvent(readEvent);
ctx.DestroyEvent(writeEvent);
ctx.DestroyBuffer(id);
for (int i = 0; i < length; ++i)
    Assert.AreEqual((byte)i, output[i]);
output.Dispose();
ctx.Dispose();
```

How to use Wait.
