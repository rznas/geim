<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AMD.GraphicsDevice.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides the main entry point for the AMD Module. Use this to interact with the FSR2 feature.

The `GraphicsDevice` includes an interface for creating and managing feature contexts, handling FSR2 command execution, and providing utility methods for quality mode resolution management.

`GraphicsDevice` is needed to implement FSR2 outside of the built-in integration to the HDRP Dynamic Resolution.

Before using `GraphicsDevice`, ensure the AMDUnityPlugin is loaded and the device is initialized via GraphicsDevice.CreateGraphicsDevice.

Additional resources: AMDUnityPlugin, FSR2Context, FSR2TextureTable, FSR2CommandInitializationData, FSR2CommandExecutionData

```csharp
using UnityEngine;
using UnityEngine.Rendering;
using UnityEngine.Rendering.HighDefinition;
using UnityEngine.AMD;// Example HDRP custom pass 
public class CustomFSRPass : CustomPass
{
    public static bool EnsureAMDPluginLoaded()
    {
        if (!AMDUnityPlugin.IsLoaded())
        {
            Debug.Log("AMDUnityPlugin is not loaded!");
            if (!AMDUnityPlugin.Load())
            {
                Debug.LogError("Unable to load AMDUnityPlugin");
                return false;
            }
        }
        Debug.Log("AMDUnityPlugin is successfully loaded!");
        return true;
    }    void InitializeAMDDevice()
    {
        if (!EnsureAMDPluginLoaded())
            return;        // AMDUnityPlugin initialization will handle device creation for us.
        // In case the device is not created, we call the static method GraphicsDevice.CreateGraphicsDevice().
        amdDevice = GraphicsDevice.device == null ? GraphicsDevice.CreateGraphicsDevice() : GraphicsDevice.device;        Debug.LogFormat("AMD.GraphicsDevice initialized w/ version {0}", GraphicsDevice.version);
    }    protected override void Setup(ScriptableRenderContext renderContext, CommandBuffer cmd)
    {
        if (amdDevice == null)
        {
            InitializeAMDDevice();
        }
        
        float scalingRatio = fsr2Context == null ? 1.0f : amdDevice.GetUpscaleRatioFromQualityMode(m_Quality);
        fsr2OutputColorBuffer = RTHandles.Alloc(
            new Vector2(scalingRatio, scalingRatio),
            dimension: TextureDimension.Tex2D,
            colorFormat: GraphicsFormat.R16G16B16A16_SFloat,
            name: "fsr2OutputColorBuffer",
            enableRandomWrite: true
        );        // other pass setup code
    }    protected override void Execute(CustomPassContext ctx)
    {
        bool initializeFsr2Context = fsr2Context == null || HasInputResolutionChanged(ctx) || HasOutputResolutionChanged(ctx);
        if (initializeFsr2Context)
        {
            if (fsr2Context != null)
            {
                amdDevice.DestroyFeature(ctx.cmd, fsr2Context);
                fsr2Context = null;
            }            FSR2CommandInitializationData initData = new FSR2CommandInitializationData();
            // populate initData
            fsr2Context = amdDevice.CreateFeature(ctx.cmd, initData);
        }        fsr2Context.executeData.enableSharpening = m_EnableSharpening ? 1 : 0;
        // populate rest of fsr2Context.executeData 
        
        FSR2TextureTable fsr2TextureTable = new FSR2TextureTable()
        {
            // populate texture table
        };        amdDevice.ExecuteFSR2(ctx.cmd, fsr2Context, fsr2TextureTable);
    }    protected override void Cleanup()
    {
        // pass cleanup code        // No explicit clean up is necessary for AMD.GraphicsDevice, all handled internally
    }    private GraphicsDevice amdDevice = null;
    private FSR2Context fsr2Context = null;
    private RTHandle fsr2OutputColorBuffer;
    // other member variables
}
```

### Static Properties

| Property | Description |
| --- | --- |
| device | Gets the device created by GraphicsDevice.CreateGraphicsDevice. If the device hasn't been created this property evaluates to null. |
| version | Gets the version that corresponds to the Unity host plugin that manages the AMD.AMDUnityPlugin official library. |

### Public Methods

| Method | Description |
| --- | --- |
| CreateFeature | Creates an FSR2Context object. |
| DestroyFeature | Destroys a specific FSR2Context created with GraphicsDevice.CreateFeature. |
| ExecuteFSR2 | Records the execution of the FSR2 pass into a rendering command buffer. This call does not execute the command buffer, it only appends custom commands into it. |
| GetRenderResolutionFromQualityMode | Queries the resolution configuration from a specified quality mode preset. |
| GetUpscaleRatioFromQualityMode | Gets a precomputed upscaling ratio based on a preset quality setting. |

### Static Methods

| Method | Description |
| --- | --- |
| CreateGraphicsDevice | Creates the main API object. Call this method only once in your application. |
