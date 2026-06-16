<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AMD.FSR2CommandExecutionData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents the state of an FSR2Context. If you call Device.ExecuteFSR2, Unity sends the values in this struct to the runtime. After this, you can change the values in this struct without any side effects.

FSR2CommandExecutionData expects `frameTimeDelta` in milliseconds while Unity's Time.deltaTime is seconds, and `cameraFovAngleVertical` in radians while Unity provides field of view in degrees. 

FSR2 expects the motion vectors to be in screen space and their values to describe motion from the current frame to the previous frame. Unity's motion vectors describe motion from the previous frame to the current frame and are in normalized device coordinates (NDC), in the [-1, +1] range. To conform to the FSR2 requirements, provide `MVScaleX` and `MVScaleY` values that scale the motion vector values with the motion vector render target size.

Refer to the [Providing Motion Vectors section in FSR2 Documentation](https://gpuopen.com/manuals/fidelityfx_sdk/fidelityfx_sdk-page_techniques_super-resolution-temporal/#providing-motion-vectors) for more details.

Additional resources: AMDUnityPlugin, GraphicsDevice, FSR2Context, FSR2TextureTable, FSR2CommandInitializationData

```csharp
using UnityEngine;
using UnityEngine.Rendering;
using UnityEngine.Rendering.HighDefinition;
using UnityEngine.Experimental.Rendering;
using UnityEngine.AMD;// Example HDRP custom pass 
public class CustomFSRPass : CustomPass
{
    protected override void Setup(ScriptableRenderContext renderContext, CommandBuffer cmd)
    {
        // setup code
    }    protected override void Execute(CustomPassContext ctx)
    {
        bool initializeFsr2Context = fsr2Context == null || HasInputResolutionChanged(ctx) || HasOutputResolutionChanged(ctx);
        if (initializeFsr2Context)
        {
            // initialize fsr2Context
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
            // initialize texture table
        };        amdDevice.ExecuteFSR2(ctx.cmd, fsr2Context, fsr2TextureTable);
    }    protected override void Cleanup()
    {
        // cleanup code
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
| cameraFar | The distance to the far plane of the camera. |
| cameraFovAngleVertical | The camera angle field of view in the vertical direction (expressed in radians). |
| cameraNear | The distance to the near plane of the camera. |
| enableSharpening | Enable an additional sharpening pass. |
| frameTimeDelta | The time elapsed since the last frame (expressed in milliseconds). |
| jitterOffsetX | The subpixel jitter offset applied to the camera (X axis). |
| jitterOffsetY | The subpixel jitter offset applied to the camera (Y axis). |
| MVScaleX | The scale factor to apply to motion vectors (X axis). |
| MVScaleY | The scale factor to apply to motion vectors (Y axis). |
| preExposure | The pre exposure value (must be > 0.0f). |
| renderSizeHeight | The height resolution that was used for rendering the input resources. |
| renderSizeWidth | The width resolution that was used for rendering the input resources. |
| reset | A boolean value which when set to true, indicates the camera has moved discontinuously. |
| sharpness | The sharpness value between 0 and 1, where 0 is no additional sharpness and 1 is maximum additional sharpness. |
