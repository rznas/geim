<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ReflectionProbe-reflectionProbeChanged.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Adds a delegate to get notifications when a Reflection Probe is added to a Scene or removed from a Scene.

Additional resources: ReflectionProbe, ReflectionProbeEvent.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class ReflectionProbeManager : MonoBehaviour
{
    private static void OnReflectionProbeEvent(ReflectionProbe probe, ReflectionProbe.ReflectionProbeEvent eventType)
    {
        Debug.Log("A ReflectionProbe event has occured: " + eventType);
    }    void Start()
    {
        ReflectionProbe.reflectionProbeChanged += OnReflectionProbeEvent;
    }    void OnDestroy()
    {
        ReflectionProbe.reflectionProbeChanged -= OnReflectionProbeEvent;
    }
}
```
