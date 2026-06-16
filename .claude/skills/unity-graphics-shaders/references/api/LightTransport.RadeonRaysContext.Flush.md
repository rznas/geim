<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.RadeonRaysContext.Flush.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** True if the flush was successful.

### Description

Flush the device context.

Start execution of the enqueued operations on the device. On some platforms the underlying implementation or driver flushes automatically, on others it is up to the user to call Flush. The Flush method returns immediately.

```csharp
using Unity.Collections;
using UnityEngine;
using UnityEngine.LightTransport;IDeviceContext ctx = new RadeonRaysContext();
ctx.Initialize();
const int sizeInBytes = 4;
var bufferID = ctx.CreateBuffer(sizeInBytes);
using var results = new NativeArray<float>(1, Allocator.Temp);
var readEvent = ctx.CreateEvent();
ctx.ReadBuffer(bufferID.Slice<float>(), results, readEvent);
ctx.Flush();
ctx.Wait(readEvent);
ctx.DestroyEvent(readEvent);
ctx.DestroyBuffer(bufferID);
ctx.Dispose();
```

How to use Flush.
