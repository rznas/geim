<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRDisplaySubsystem.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An XRDisplaySubsystem controls rendering to a head tracked display.

An XRDisplaySubsystem instance can take up to three frames to fully initialize. You should wait three frames before accessing any of the methods or properties of this class.

The following example uses a coroutine to wait for three frames before it sets the XR display subsystem's foveated rendering properties:

```csharp
using UnityEngine;
using UnityEngine.XR;
using System.Collections;
using System.Collections.Generic;public class FoveationStarter : MonoBehaviour
{
    List<XRDisplaySubsystem> xrDisplays = new List<XRDisplaySubsystem>();    void Start()
    {
        StartCoroutine(WaitForXRDisplay());
    }    IEnumerator WaitForXRDisplay()
    {
        yield return new WaitUntil(() => Time.frameCount >= 3);        SubsystemManager.GetSubsystems(xrDisplays);
        if (xrDisplays.Count == 1)
        {
            xrDisplays[0].foveatedRenderingLevel = .5f; // half strength
            
            Debug.Log($"Foveated rendering set to {xrDisplays[0].foveatedRenderingLevel}.");
        }
        else
        {
            Debug.LogWarning($"Couldn't find an XRDisplaySubsystem for foveated rendering.");
        }
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| appliedViewportScale | The portion of the allocated display texture used by the active stereo device for the current frame. |
| contentProtectionEnabled | Sets or gets the state of content protection for the current active provider. For most providers, content protection allows you to use write only textures for rendering. This stops the ability for apps to read textures from the graphics card and view/record images that may be protected in some way. |
| disableLegacyRenderer | Disables the legacy renderer while this XRDisplaySubsystem is active. |
| displayOpaque | Determines if the current attached device has an opaque display. Most VR devices are opaque in order to increase the immersive experience, AR devices are transparent to allow for interaction with an augmentation of the current environment. |
| foveatedRenderingFlags | Controls optional behavior of the foveated rendering system. |
| foveatedRenderingLevel | Controls the intensity of the foveated rendering system. |
| globalDynamicScale | The current scale factor applied to dynamically scalable eye textures when XR dynamic resolution is active. |
| hdrOutputSettings | The HDROutputSettings for the XR Display Subsystem. |
| occlusionMaskScale | A scale applied to the standard occulsion mask. |
| reprojectionMode | The kind of reprojection the app requests to stabilize rendering relative to the user's head motion. |
| scaleOfAllRenderTargets | Controls the size of the textures submitted to the display as a multiplier of the display's default resolution. |
| scaleOfAllViewports | Controls how much of the allocated display texture should be used for rendering. |
| supportedTextureLayouts | Specifies all texture layouts supported by this display subsystem. This var is a bit field that could be combination of XRDisplaySubsystem.TextureLayout. |
| textureLayout | Set DisplaySubsystem to use certain texture layout. Should query supported texture layout through XRDisplaySubsystem.supportedTextureLayouts first for the capabilities. |
| zFar | Set DisplaySubsystem to use zFar for rendering. |
| zNear | Set DisplaySubsystem to use zNear for rendering. |

### Public Methods

| Method | Description |
| --- | --- |
| AddGraphicsThreadMirrorViewBlit | This function records the display subsystem's native blit event to the target command buffer. This function is typically called by a scriptable rendering pipeline. |
| BeginRecordingIfLateLatched | This function enables late latching recording of constant buffer memory locations which are later patched with the latest pose data. |
| EndRecordingIfLateLatched | This function disables late latching recording of constant buffer locations. |
| GetCullingParameters | Gets culling parameters for a specific culling pass index. |
| GetMirrorViewBlitDesc | Get a mirror view blit operation descriptor from the current display subsystem. |
| GetPreferredMirrorBlitMode | Returns the XR display's preferred mirror blit mode. |
| GetRenderPass | Gets an XRRenderPass of a specific index. |
| GetRenderPassCount | The number of XRRenderPass entries for this XR Display. |
| GetRenderTexture | Given the UnityXRRenderTextureID returned by IUnityXRDisplayInterface::CreateTexture, return the managed UnityEngine.RenderTexture instance. |
| GetRenderTextureForRenderPass | Given a render pass, return the RenderTexture instance backing that render pass. If the render pass is invalid, or if the render texture does not exist, return null. |
| GetSharedDepthTextureForRenderPass | Given a render pass, return the shared depth buffer RenderTexture instance backing that render pass. If the render pass is invalid, or if the render texture does not exist, return null. |
| MarkTransformLateLatched | This marks a given GameObject's transform to be late latched in the next frame. Once marked for late latching, the GameObject transform and its descendants will be updated with the latest VR pose updates before rendering is submitted to the GPU. |
| ScaledTextureHeight | Provides the current, scaled height of a render texture. |
| ScaledTextureWidth | Provides the current, scaled width of a render texture. |
| SetFocusPlane | Sets a point in 3D space that acts as the focal point of the Scene for this frame. This helps to improve the visual fidelity of content around this point. You must set this value every frame. Note that specifying body-locked content in focus improves the fidelity of body-locked content at the expense of content not locked to the body. This is especially apparent when the user moves. |
| SetMSAALevel | Set MSAA level for the DisplaySubsystem's render texture. |
| SetPreferredMirrorBlitMode | Override the XR display's preferred mirror blit mode from the script. |
| TryGetAppGPUTimeLastFrame | Retrieves the time the GPU has spent on executing commands from the application's last frame, as reported by the XR Plugin. Measured in seconds. |
| TryGetCompositorGPUTimeLastFrame | Retrieves the amount of time that the GPU spent executing the compositor renderer during the last frame, as reported by the XR Plugin. Measured in seconds. |
| TryGetDisplayRefreshRate | Retrieves the refresh rate of the display as reported by the XR Plugin. |
| TryGetDroppedFrameCount | Retrieves the number of dropped frames reported by the XR Plugin. |
| TryGetFramePresentCount | Retrieves the number of times the current frame has been drawn to the device as reported by the XR Plugin. |
| TryGetMotionToPhoton | Retrieves the motion-to-photon value as reported by the XR Plugin. |

### Events

| Event | Description |
| --- | --- |
| displayFocusChanged | Event sent when XR display focus changes. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| running | Whether or not the subsystem is running. |

### Public Methods

| Method | Description |
| --- | --- |
| Destroy | Destroys this instance of a subsystem. |
| Start | Starts an instance of a subsystem. |
| Stop | Stops an instance of a subsystem. |
