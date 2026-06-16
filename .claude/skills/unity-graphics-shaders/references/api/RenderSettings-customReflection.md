<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderSettings-customReflection.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Custom specular reflection cubemap.

Specifies a cubemap for use as a default specular reflection.

Additional resources: defaultReflectionMode.

```csharp
using UnityEngine;// This example creates and uses a real-time Reflection Probe to update a Cubemap. The Cubemap is then used as a default specular reflection.
public class UpdateDefaultReflection : MonoBehaviour
{
    private ReflectionProbe probeComponent = null;
    private Cubemap cubemap = null;
    private int renderId = -1;    void Start()
    {
        GameObject probeGameObject = new GameObject("Default Reflection Probe");        // Use a location such that the new Reflection Probe will not interfere with other Reflection Probes in the Scene.
        probeGameObject.transform.position = new Vector3(0, -1000, 0);        // Create a Reflection Probe that only contains the Skybox. The Update function controls the Reflection Probe refresh.
        probeComponent = probeGameObject.AddComponent<ReflectionProbe>() as ReflectionProbe;
        probeComponent.resolution = 256;
        probeComponent.size = new Vector3(1, 1, 1);
        probeComponent.cullingMask = 0;
        probeComponent.clearFlags = UnityEngine.Rendering.ReflectionProbeClearFlags.Skybox;
        probeComponent.mode = UnityEngine.Rendering.ReflectionProbeMode.Realtime;
        probeComponent.refreshMode = UnityEngine.Rendering.ReflectionProbeRefreshMode.ViaScripting;
        probeComponent.timeSlicingMode = UnityEngine.Rendering.ReflectionProbeTimeSlicingMode.NoTimeSlicing;        // A cubemap is used as a default specular reflection.
        cubemap = new Cubemap(probeComponent.resolution, probeComponent.hdr ? TextureFormat.RGBAHalf : TextureFormat.RGBA32, true);
    }    // The Update function refreshes the Reflection Probe and copies the result to the default specular reflection Cubemap.
    void Update()
    {
        // The texture associated with the real-time Reflection Probe is a render target and RenderSettings.customReflection is a Cubemap. We have to check the support if copying from render targets to Textures is supported.
        if ((SystemInfo.copyTextureSupport & UnityEngine.Rendering.CopyTextureSupport.RTToTexture) != 0)
        {
            // Wait until previous RenderProbe is finished before we refresh the Reflection Probe again.
            // renderId is a token used to figure out when the refresh of a Reflection Probe is finished. The refresh of a Reflection Probe can take mutiple frames when time-slicing is used.
            if (renderId == -1 || probeComponent.IsFinishedRendering(renderId))
            {
                if (probeComponent.IsFinishedRendering(renderId))
                {
                    // After the previous RenderProbe is finished, we copy the probe's texture to the cubemap and set it as a custom reflection in RenderSettings.
                    Graphics.CopyTexture(probeComponent.texture, cubemap as Texture);                    RenderSettings.customReflection = cubemap;
                    RenderSettings.defaultReflectionMode = UnityEngine.Rendering.DefaultReflectionMode.Custom;
                }                renderId = probeComponent.RenderProbe();
            }
        }
    }
}
```
