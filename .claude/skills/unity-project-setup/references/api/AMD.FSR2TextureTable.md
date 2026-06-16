<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AMD.FSR2TextureTable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The set of texture slots available for the FSR2Context. SA GraphicsDevice.ExecuteFSR2.

Use this struct to specify input and output textures for the FSR2 implementation.

**Note:** You must create output color texture `colorOutput` with `enableRandomWrite` parameter set to `true` when initializing the RTHandle of the texture. This is due to FSR2 passes requiring access to the resources in a compute shader

Refer to the [Input resources section in FSR2 Documentation](https://gpuopen.com/manuals/fidelityfx_sdk/fidelityfx_sdk-page_techniques_super-resolution-temporal/#id12) for more details.

Additional resources: AMDUnityPlugin, GraphicsDevice, FSR2Context, FSR2CommandInitializationData, FSR2CommandExecutionData

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
        if (amdDevice == null)
        {
            InitializeAMDDevice();
        }        float scalingRatio = fsr2Context == null ? 1.0f : amdDevice.GetUpscaleRatioFromQualityMode(m_Quality);
        fsr2OutputColorBuffer = RTHandles.Alloc(
            new Vector2(scalingRatio, scalingRatio), 
            slices: 1, 
            dimension: TextureDimension.Tex2D,
            colorFormat: GraphicsFormat.R16G16B16A16_SFloat,
            name: "fsr2OutputColorBuffer",
            enableRandomWrite: true
        );
    }    protected override void Execute(CustomPassContext ctx)
    {
        bool initializeFsr2Context = fsr2Context == null || HasInputResolutionChanged(ctx) || HasOutputResolutionChanged(ctx);
        if (initializeFsr2Context)
        {
            // fsr2Context initialization code
        }        fsr2Context.executeData.enableSharpening = m_EnableSharpening ? 1 : 0;
        // populate rest of the fsr2Context.executeData
        FSR2TextureTable fsr2TextureTable = new FSR2TextureTable()
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
        // cleanup code
    }    private GraphicsDevice amdDevice = null;
    private FSR2Context fsr2Context = null;
    private RTHandle fsr2OutputColorBuffer;    [SerializeField] public float m_Sharpness = 0.92f;
    [SerializeField] public bool m_EnableSharpening = true;
    [SerializeField] public FSR2Quality m_Quality = FSR2Quality.Quality;
    FSR2Quality m_QualityBefore = FSR2Quality.Quality;
    Vector2Int m_InputTextureSize = new Vector2Int(0,0);
}
```

### Properties

| Property | Description |
| --- | --- |
| biasColorMask | A mask, same size as colorInput, preferably of format R8_UNORM that informs FSR2 of possible moving pixels. If heavy ghosting is encountered, set pixels to this mask to fix the problem. This texture is optional. |
| colorInput | The input color buffer to upsample for FSR2Context. This texture is mandatory and you must set it to a non-null value. |
| colorOutput | The input color buffer to upsample for FSR2Context. This texture is mandatory and you must set it to a non-null value. |
| depth | The input depth buffer. This must be the same size as the input color buffer. This texture is mandatory and you must set it to a non-null value. |
| exposureTexture | A 1x1 texture with pre-exposure values. If you do not use pre-exposure, do not set this texture. This texture is optional. |
| motionVectors | The motion vectors requested by the FSR2Context. Depending on the AMD.FSR2FeatureFlags specified in FSR2Context.initData, this buffer can be a smaller scale or the full output resolution. This texture is mandatory and you must set it to a non-null value. |
| reactiveMask | Rendering mask specifying reliance on temporal information. Additional resources: Github documentation on reactive mask. |
| transparencyMask | A transparency bit mask. This must be the same size as the input texture. This texture helps the FSR2Context with ghosting issues. This texture is optional. |
