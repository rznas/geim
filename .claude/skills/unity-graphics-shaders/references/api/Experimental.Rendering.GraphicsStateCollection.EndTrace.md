<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Rendering.GraphicsStateCollection.EndTrace.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Stop tracing shader variants and graphics states encountered at runtime.

```csharp
using UnityEngine;
using UnityEngine.Experimental.Rendering;public class EndTraceExample : MonoBehaviour
{
    public GraphicsStateCollection graphicsStateCollection;    void Start()
    {
        graphicsStateCollection = new GraphicsStateCollection();
        graphicsStateCollection.BeginTrace();
    }    void OnDestroy()
    {
        graphicsStateCollection.EndTrace();
    }
}
```

Additional resources: BeginTrace, isTracing, WarmUp.
