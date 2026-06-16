<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.RadeonRaysContext.DestroyEvent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | ID of the event to destroy. |

### Description

Destroy the event with the given ID. You should call this to free temporary resources associated with an event. Attempting to use the event after it has been destroyed, for example using IDeviceContext.Wait or IDeviceContext.IsCompleted will result in undefined behavior.

```csharp
using Unity.Collections;
using UnityEngine;
using UnityEngine.LightTransport;// Create context.
using var ctx = new RadeonRaysContext();
ctx.Initialize();// Create buffer.
BufferID buffer = ctx.CreateBuffer(sizeof(int) * 8, sizeof(int));
using var array = new NativeArray<int>(8, Allocator.Persistent, NativeArrayOptions.ClearMemory);// Write to buffer and wait for completion.
EventID evt = ctx.CreateEvent();
ctx.WriteBuffer(buffer.Slice<int>(), array, evt);
var flushOk = ctx.Flush();
Assert.IsTrue(flushOk);
var waitOk = ctx.Wait(evt);
Assert.IsTrue(waitOk);// Cleanup. After this point, we may no longer use `evt`.
ctx.DestroyEvent(evt);
ctx.DestroyBuffer(buffer);
```

Proper usage of DestroyEvent.
