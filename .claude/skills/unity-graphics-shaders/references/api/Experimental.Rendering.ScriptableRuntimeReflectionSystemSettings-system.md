<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Rendering.ScriptableRuntimeReflectionSystemSettings-system.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The current scriptable runtime reflection system instance.

Set this property in a method with RuntimeInitializeOnLoadMethodAttribute with your own implementation.

```csharp
using UnityEngine;
using UnityEngine.Experimental.Rendering;// Empty ScriptableRuntimeReflectionSystem for the exemple
class CustomScriptableRuntimeReflectionSystem : ScriptableRuntimeReflectionSystem {}class CustomScriptableRuntimeReflectionSystemIntegration
{
    [RuntimeInitializeOnLoadMethod]
    static void Initialize()
    {
        ScriptableRuntimeReflectionSystemSettings.system = new CustomScriptableRuntimeReflectionSystem();
    }
}
```
