<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.RadeonRaysContext.Initialize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** True if the device context was initialized successfully.

### Description

Initialize the device context.

RadeonRaysContext implements the IDeviceContext interface. It uses the RadeonRays SDK for intersection testing and the OpenCL 1.2 API for compute. When initializing the context, Unity compiles the compute kernels.

```csharp
using UnityEngine.LightTransport;using var ctx = new RadeonRaysContext();
ctx.Initialize();
```

How to initialize the context.
