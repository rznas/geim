<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Rendering.IScriptableRuntimeReflectionSystem.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines the required members for a Runtime Reflection Systems.

You can use the empty implementation as base class, see ScriptableRuntimeReflectionSystem.

```csharp
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Experimental.Rendering;abstract class CustomRuntimeReflectionSystem : IScriptableRuntimeReflectionSystem
{
    List<ReflectionProbe> m_RealtimeReflectionProbes = new List<ReflectionProbe>();
    List<RenderTexture> m_RealtimeReflectionProbeTargets = new List<RenderTexture>();    public bool TickRealtimeProbes()
    {
        for (int i = 0, c = m_RealtimeReflectionProbes.Count; i < c; ++i)
        {
            var probe = m_RealtimeReflectionProbes[i];
            var target = m_RealtimeReflectionProbeTargets[i];            RenderProbe(probe, target);            probe.realtimeTexture = target;
        }        return true;
    }    protected abstract void RenderProbe(ReflectionProbe probe, RenderTexture target);
    public abstract void Dispose();
}
```

### Public Methods

| Method | Description |
| --- | --- |
| TickRealtimeProbes | Update the reflection probes. |
