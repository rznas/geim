<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AMD.AMDUnityPlugin.IsLoaded.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** Returns true if the plugin has been loaded. Otherwise, returns false.

### Description

Checks whether the `AMDUnityPlugin` in the AMD native module has been loaded or not.

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
