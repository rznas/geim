<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Rendering.GraphicsStateCollection.WarmUpProgressively.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| count | The maximum number of variant permutations to warm up. |
| dependency | Job to wait for. |

### Returns

**JobHandle** Handle to prewarming job.

### Description

Prewarms the given number of shader variant state permutations using associated graphics states.

Except for the case of WebGPU, graphics state collection warmup is only supported when SystemInfo.supportsParallelPSOCreation is true. Otherwise, behavior falls back to the legacy ShaderVariantCollection.WarmUp and `count` restricts the maximum number of shader variants instead of shader variant permutations.

```csharp
using UnityEngine;
using UnityEngine.Experimental.Rendering;
using Unity.Jobs;public class GraphicsStateCollectionWarmup : MonoBehaviour
{
    public GraphicsStateCollection graphicsStateCollection;
    public int statesToWarmup;    void Start()
    {
        JobHandle handle = graphicsStateCollection.WarmUpProgressively(statesToWarmup);
    }
}
```

Additional resources: WarmUp, isWarmedUp, completedWarmupCount, ShaderVariantCollection.WarmUp.
