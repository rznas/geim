<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.RadeonRaysContext.IsCompleted.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | ID of the event to query. |

### Returns

**bool** True if the asynchronous operation has completed.

### Description

Returns true if the asynchronous operation completed.

This method returns immediately and does not wait for the operation to complete. Use Flush to force the device implementation to start processing commands. Use IDeviceContext.Wait to busy-wait for a specific event.

```csharp
using System.Threading;
using Unity.Collections;
using UnityEngine;
using UnityEngine.LightTransport;IDeviceContext ctx = new RadeonRaysContext();
ctx.Initialize();
uint length = 8;
var input = new NativeArray<byte>((int)length, Allocator.Persistent);
for (int i = 0; i < length; ++i)
{
    input[i] = (byte)i;
}
var output = new NativeArray<byte>((int)length, Allocator.Persistent);
BufferID id = ctx.CreateBuffer(length, 1);
var writeEvent = ctx.CreateEvent();
ctx.WriteBuffer(id.Slice<byte>(), input, writeEvent);
var readEvent = ctx.CreateEvent();
ctx.ReadBuffer(id.Slice<byte>(), output, readEvent);
bool flushOk = ctx.Flush();
Assert.IsTrue(flushOk);
input.Dispose();
var watchDogTimeout = Time.realtimeSinceStartup + 5.0f;
while (!ctx.IsCompleted(readEvent))
{
    Thread.Sleep(10);
    if (Time.realtimeSinceStartup > watchDogTimeout)
        Assert.IsTrue(false, "watchdog timeout");
}// The event has completed.
ctx.DestroyEvent(readEvent);
ctx.DestroyEvent(writeEvent);ctx.DestroyBuffer(id);
for (int i = 0; i < length; ++i)
    Assert.AreEqual((byte)i, output[i]);
output.Dispose();
ctx.Dispose();
```

How to check if an asynchronous operation has completed.
