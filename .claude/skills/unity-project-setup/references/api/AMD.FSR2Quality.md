<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AMD.FSR2Quality.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options for FSR2 performance modes.

Each performance mode corresponds to a scaling ratio per dimension of the input texture:

1. Quality: 1.5x
2. Balanced: 1.7x
3. Performance: 2.0x
4. Ultra Performance: 3.0x

Refer to the [Scaling modes section in FSR2 Documentation](https://gpuopen.com/manuals/fidelityfx_sdk/fidelityfx_sdk-page_techniques_super-resolution-temporal/#id8) for more details.

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
        return m_QualityBefore != m_Quality; 
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
        // populate rest of the fsr2Context.executeData        FSR2TextureTable fsr2TextureTable = new FSR2TextureTable()
        {
            // set texture table
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
| Quality | Highest quality, lower performance. |
| Balanced | Balances performance with quality. |
| Performance | Fast performance, lower quality. |
| UltraPerformance | Fastest performance, lowest quality. |
