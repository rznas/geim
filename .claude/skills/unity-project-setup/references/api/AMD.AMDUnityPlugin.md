<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AMD.AMDUnityPlugin.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides methods to manage loading and unloading AMD module plugins.

`AMDUnityPlugin` contains the implementation for AMD's [FidelityFX Super Resolution 2](https://gpuopen.com/fidelityfx-superresolution-2/) (FSR2) temporal upscaler.

To access this API, follow these steps:

1. Open the **Package Manager** window
2. Go to **Built-in packages**.
3. Enable the **AMD** package.

Once enabled, the plugin is automatically loaded by Unity and becomes available for both built-in and custom FSR2 integration workflows.

**Note:** You don't need to use this API to enable FSR2 in a Unity project. For more information, refer to HDRP Dynamic Resolution.

`AMDUnityPlugin` enables advanced users to access and integrate AMD's FSR2 functionality directly in custom rendering workflows. It's primarily intended for users who want to bypass the built-in engine integration available in the High Definition Render Pipeline (HDRP) and implement their own FSR2 logic, such as through a `CustomPass` or other Scriptable Render Pipeline (SRP) extensions. 

When using this API manually, it's good practice to verify that the plugin is available using AMDUnityPlugin.IsLoaded. In case the plugin fails to load automatically (for example, the end user isn't using the native AMD package), you can load it manually using AMDUnityPlugin.Load. 

Additional resources: FSR2Context, GraphicsDevice, CommandBuffer, ScriptableRenderContext.

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
        }        Debug.Log("AMDUnityPlugin is successfully loaded!");
        return true;
    }    void InitializeAMDDevice()
    {
        if (!EnsureAMDPluginLoaded())
            return;        // device initialization code
    }    protected override void Setup(ScriptableRenderContext renderContext, CommandBuffer cmd)
    {
        if (amdDevice == null)
        {
            InitializeAMDDevice();
        }
        
        // other pass setup code
    }    protected override void Execute(CustomPassContext ctx)
    {
        // pass execution code
    }    protected override void Cleanup()
    {
        // pass cleanup code
    }    private GraphicsDevice amdDevice = null;
    // other member variables
}
```

### Static Methods

| Method | Description |
| --- | --- |
| IsLoaded | Checks whether the AMDUnityPlugin in the AMD native module has been loaded or not. |
| Load | Attempts to dynamically load the AMDUnityPlugin. |
