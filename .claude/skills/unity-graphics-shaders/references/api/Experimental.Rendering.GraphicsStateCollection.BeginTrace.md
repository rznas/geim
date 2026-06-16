<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Rendering.GraphicsStateCollection.BeginTrace.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** True if tracing successfully started, false otherwise.

### Description

Start tracing shader variants and graphics states encountered at runtime.

The graphicsDeviceType, qualityLevelName, and runtimePlatform for this collection are set when tracing begins. Tracing cannot begin if any collection is already currently tracing.

```csharp
using UnityEngine;
using UnityEngine.Experimental.Rendering;public class BeginTraceExample : MonoBehaviour
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

Additional resources: EndTrace, isTracing.
