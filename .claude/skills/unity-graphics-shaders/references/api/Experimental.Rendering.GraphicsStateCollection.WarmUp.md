<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Rendering.GraphicsStateCollection.WarmUp.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| dependency | Job to wait for. |

### Returns

**JobHandle** Handle to prewarming job.

### Description

Prewarms all shader variants in this collection using associated graphics states.

This will result in the GPU representation of the stored shader variants being created. Except for the case of WebGPU, full graphics state collection warmup is only supported when SystemInfo.supportsParallelPSOCreation is true. Otherwise, behavior falls back to the legacy ShaderVariantCollection.WarmUp.

You can use the JobHandle this method returns to control if the creation of GPU representations occurs synchronously or asynchronously.

**Note**: On the Web platform, shader compilation is always performed synchronously and the returned JobHandle will be empty.

The example below will perform the warm up asynchronously.

```csharp
using UnityEngine;
using UnityEngine.Experimental.Rendering;
using Unity.Jobs;public class WarmUpExample : MonoBehaviour
{
    public GraphicsStateCollection graphicsStateCollection;    void Start()
    {
        JobHandle handle = graphicsStateCollection.WarmUp();
    }
}
```

Below is an example of how to wait on the completion of the job handle in order to perform operations synchronously.

```csharp
using UnityEngine;
using UnityEngine.Experimental.Rendering;
using Unity.Jobs;public class WarmUpSynchronousExample : MonoBehaviour
{
    public GraphicsStateCollection graphicsStateCollection;    void Start()
    {
        JobHandle handle = graphicsStateCollection.WarmUp();
        handle.Complete();
    }
}
```

Prewarming can also be linked to other jobs using the input dependency and returned JobHandle.

```csharp
using UnityEngine;
using UnityEngine.Experimental.Rendering;
using Unity.Jobs;public class WarmUpSynchronousExample : MonoBehaviour
{
    struct PostWarmUpJob : IJob
    {
        public void Execute()
        {
            Debug.Log("WarmUp is complete");
        }
    }    public GraphicsStateCollection graphicsStateCollection;
    public JobHandle inputJobHandle;    void Start()
    {
        JobHandle handle = graphicsStateCollection.WarmUp(inputJobHandle);        var job = new PostWarmUpJob();
        job.Schedule(handle);
    }
}
```

Additional resources: WarmUpProgressively, isWarmedUp, ShaderVariantCollection.WarmUp.
