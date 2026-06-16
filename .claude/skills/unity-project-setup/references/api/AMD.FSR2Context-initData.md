<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AMD.FSR2Context-initData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The immutable initialization parameters used to configure FSR2.

Set once when creating the FSR2Context with GraphicsDevice.CreateFeature. These values determine the internal resolution limits, display size, and operational flags. Additional resources: FSR2CommandInitializationData.

```csharp
using UnityEngine;
using UnityEngine.Rendering;
using UnityEngine.Rendering.HighDefinition;
using UnityEngine.Experimental.Rendering;
using UnityEngine.AMD;// Example HDRP custom pass 
public class CustomFSRPass : CustomPass
{
    void InitializeAMDDevice()
    {
        // device initialization code
    }
    bool HasOutputResolutionChanged(CustomPassContext ctx) 
    { 
        // detect resolution change
    }
    bool HasInputResolutionChanged(CustomPassContext ctx) 
    { 
        // detect resolution change
    }    protected override void Setup(ScriptableRenderContext renderContext, CommandBuffer cmd)
    {
        // setup code
    }    protected override void Execute(CustomPassContext ctx)
    {
        bool initializeFsr2Context = fsr2Context == null || HasInputResolutionChanged(ctx) || HasOutputResolutionChanged(ctx);
        if (initializeFsr2Context)
        {
            if (fsr2Context != null)
            {
                amdDevice.DestroyFeature(ctx.cmd, fsr2Context);
                fsr2Context = null;
            }            Vector2Int renderSize = ctx.cameraColorBuffer.GetScaledSize();
            float scalingRatio = amdDevice.GetUpscaleRatioFromQualityMode(m_Quality);
            uint displaySizeWidth = (uint)(renderSize.x * scalingRatio);
            uint displaySizeHeight = (uint)(renderSize.y * scalingRatio);            FSR2CommandInitializationData initData = new FSR2CommandInitializationData();
            initData.SetFlag(FfxFsr2InitializationFlags.EnableHighDynamicRange, true);
            initData.SetFlag(FfxFsr2InitializationFlags.EnableDisplayResolutionMotionVectors, true);
            initData.SetFlag(FfxFsr2InitializationFlags.EnableMotionVectorsJitterCancellation, false);
            initData.SetFlag(FfxFsr2InitializationFlags.DepthInverted, true);
            initData.maxRenderSizeWidth = displaySizeWidth;
            initData.maxRenderSizeHeight = displaySizeHeight;
            initData.displaySizeWidth = displaySizeWidth;
            initData.displaySizeHeight = displaySizeHeight;
            fsr2Context = amdDevice.CreateFeature(ctx.cmd, initData);            // At this point, we can access the readonly initData within the fsr2Context.
            Debug.LogFormat("FSR2 Context:\n" +
                    "\tmaxRenderSizeWidth={0}\n\tmaxRenderSizeHeight={1}\n" +
                    "\tdisplaySizeWidth={2}\n\tdisplaySizeHeight={3}\n" + 
                    "\tflags={4}",
                fsr2Context.initData.maxRenderSizeWidth,
                fsr2Context.initData.maxRenderSizeHeight,
                fsr2Context.initData.displaySizeWidth,
                fsr2Context.initData.displaySizeHeight,
                fsr2Context.initData.ffxFsrFlags
            );
        }        // pass execution code
    }    protected override void Cleanup()
    {
        // cleanup code
    }    private GraphicsDevice amdDevice = null;
    private FSR2Context fsr2Context = null;
    [SerializeField] public FSR2Quality m_Quality = FSR2Quality.Quality;
    // other fields
}
```
