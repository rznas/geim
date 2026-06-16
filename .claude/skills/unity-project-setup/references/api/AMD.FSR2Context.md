<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AMD.FSR2Context.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides the persistent context for managing FSR2 initialization and per-frame execution state.

This class encapsulates both immutable and mutable configuration data required to use AMD FidelityFX Super Resolution 2 (FSR2). It must persist across frames to maintain internal history and reconstruction buffers. 

Use `FSR2Context` to implement a custom version of FSR2 outside of the built-in integration with the HDRP Dynamic Resolution.

Modify the FSR2Context.executeData property to adjust per-frame parameters before calling GraphicsDevice.ExecuteFSR2. 

You can initialize `FSR2Context` using GraphicsDevice.CreateFeature and clean it up using GraphicsDevice.DestroyFeature.

Additional resources: AMDUnityPlugin, GraphicsDevice

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
            fsr2Context = amdDevice.CreateFeature(ctx.cmd, initData);
        }        Vector2Int mvSize = ctx.cameraMotionVectorsBuffer.GetScaledSize();
        m_InputTextureSize = ctx.cameraColorBuffer.GetScaledSize();        fsr2Context.executeData.enableSharpening = m_EnableSharpening ? 1 : 0;
        fsr2Context.executeData.sharpness = m_Sharpness;
        fsr2Context.executeData.renderSizeWidth = (uint)m_InputTextureSize.x;
        fsr2Context.executeData.renderSizeHeight = (uint)m_InputTextureSize.y;
        fsr2Context.executeData.jitterOffsetX = -ctx.hdCamera.taaJitter.x;
        fsr2Context.executeData.jitterOffsetY = -ctx.hdCamera.taaJitter.y;
        fsr2Context.executeData.preExposure = 1.0f;
        fsr2Context.executeData.frameTimeDelta = Time.deltaTime * 1000.0f; // FSR2 expects time in milliseconds
        fsr2Context.executeData.cameraNear = ctx.hdCamera.camera.nearClipPlane;
        fsr2Context.executeData.cameraFar = ctx.hdCamera.camera.farClipPlane;
        fsr2Context.executeData.cameraFovAngleVertical = ctx.hdCamera.camera.fieldOfView * (Mathf.PI * 2.0f/360.0f); // FSR2 expects in radians        // Unity computes motion vectors in NDC, FSR2 expects them in screen space and from current frame to previous frame.
        // Here we scale by the render target size to meet the FSR2 requirements,
        // and also invert them to satisfy the frame of reference requirement.
        fsr2Context.executeData.MVScaleX = -((float)mvSize.x); 
        fsr2Context.executeData.MVScaleY = -((float)mvSize.y); #if UNITY_EDITOR
        // The same camera is used to render both Scene and Play mode views within the editor.
        // In case both of these views are visible at the same time, we'll need to reset to avoid
        // rendering artifacts.
        fsr2Context.executeData.reset = 1;
#else
        fsr2Context.executeData.reset = (initializeFsr2Context || parameters.hdCamera.isFirstFrame) ? 1 : 0;
#endif        FSR2TextureTable fsr2TextureTable = new FSR2TextureTable()
        {
            // Mandatory inputs
            colorInput = ctx.cameraColorBuffer,
            colorOutput = fsr2OutputColorBuffer,
            depth = ctx.cameraDepthBuffer,
            motionVectors = ctx.cameraMotionVectorsBuffer,            // Optional inputs
            transparencyMask = null,
            exposureTexture = null,
            reactiveMask = null,
            biasColorMask = null
        };        amdDevice.ExecuteFSR2(ctx.cmd, fsr2Context, fsr2TextureTable);
    }    protected override void Cleanup()
    {
        if (fsr2Context != null)
        {
            amdDevice.DestroyFeature(cmd, fsr2Context);
            fsr2Context = null;
        }        // other cleanup code
    }    private GraphicsDevice amdDevice = null;
    private FSR2Context fsr2Context = null;
    private CommandBuffer cmd = null;
    private RTHandle fsr2OutputColorBuffer;    [SerializeField] public float m_Sharpness = 0.92f;
    [SerializeField] public bool m_EnableSharpening = true;
    [SerializeField] public FSR2Quality m_Quality = FSR2Quality.Quality;    Vector2Int m_InputTextureSize = new Vector2Int(0,0);
}
```

### Properties

| Property | Description |
| --- | --- |
| executeData | The mutable execution parameters used by FSR2 for each frame. |
| initData | The immutable initialization parameters used to configure FSR2. |
