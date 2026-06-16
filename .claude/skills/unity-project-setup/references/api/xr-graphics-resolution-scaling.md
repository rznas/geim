<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/xr-graphics-resolution-scaling.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Resolution control in XR projects

Understand how to control the resolution in your untethered XR project.

You can implement resolution scaling to reduce GPU workload and optimize performance of your XR project. Some methods of resolution control on XR devices implement dynamic resolution. Dynamic resolution adjusts the resolution automatically to maintain a stable frame rate.

The way you control the resolution in your XR project depends on the render pipeline your project uses.

## Resolution control reference

The following table lists the methods you can use to scale resolution in your XR project and which render pipeline each method is compatible with:

| **Method** | **Render pipeline compatibility** |
| --- | --- |
| Control resolution with XRSettings.renderViewportScale | URP |
| Change render scale in the URP Asset | URP |
| Enable automatic viewport dynamic resolution | URP |
| Dynamic resolution system | HDRP |
| Change the XRSettings.eyeTextureResolutionScale | HDRP |

## Control resolution with URP

If your project uses the universal render pipeline (URP), Unity recommends that you Control resolution with XRSettings.renderViewportScale. If your project uses post-processing, you can use the `XRSettings.renderViewportScale` with additional set up as outlined in Use XRSettings.renderViewPortScale with post-processing enabled.

You can also Change render scale in the URP Asset, but this is an expensive method.

If your project uses Unity 6.3 or newer, and [OpenXR](https://docs.unity3d.com/Packages/com.unity.xr.openxr@1.16/) 1.16 or newer, you can Enable automatic viewport dynamic resolution to automatically change the resolution on OpenXR runtimes.

### Control resolution with XRSettings.renderViewportScale

URP renders directly to the eye texture when you don’t enable post-processing methods, or when you enable HDR. When URP renders directly to the eye texture, you can use XRSettings.renderViewportScale directly. `XRSettings.renderViewportScale` controls how much of the allocated eye texture URP uses for rendering. You can change this value at runtime to dynamically adjust the eye render resolution.

Adjusting the `renderViewPortScale` can be the best way to take advantage of dynamic resolution. You can change the viewport scale every frame without the performance penalty of reallocating the eye textures.

To enable dynamic resolution, you can use XRSettings.renderViewportScale to control the portion of the allocated eye texture to which the rendering pipeline renders. For example, if you set a value of 0.5, then URP renders into one quarter of the texture (half the height and half the width). The XR device then scales this area to fill the final display. You can change the `renderViewportScale` value at runtime to dynamically adjust the eye render resolution.

`XRSettings.renderViewportScale` is compatible with fixed foveated rendering.

**Note**: `XRSettings.renderViewportScale` is a developer hint to the XR runtime for the desired viewport scale. However, the runtime might choose to use this value or ignore it based on its internal logic and performance considerations. You can query XRSettings.appliedRenderViewportScale to monitor what scale the device is using and make informed decisions about how to adjust `XRSettings.renderViewportScale` for subsequent frames.

#### Use XRSettings.renderViewPortScale with post-processing enabled

If you enable post-processing methods in your URP XR project, URP renders to intermediate textures rather than directly to the eye texture.

To enable dynamic resolution with intermediate textures:

1. Open your Main Camera in the **Inspector**. Under **Output**, enable **URP Dynamic Resolution**.
2. Use XRSettings.renderViewportScale to adjust the scale of the final area of the viewport sent to the device (the last blit viewport). URP internally uses the ScalableBufferManager to scale the intermediate textures.

**Note:** You can’t use this approach with fixed foveated rendering, or if you have enabled Temporal Anti Aliasing.

### Change render scale in the URP Asset

Change the URP render scale directly in your URP Asset to scale the eye texture directly. Reducing the value of the URP render scale can reduce the resolution. This method is an alternative to XRSettings.eyeTextureResolutionScale, which isn’t supported in URP but is supported in HDRP.

**Important**: Changing the render scale reallocates the eye texture, which is an expensive operation. You should not perform this operation every frame.

To change the render scale of your URP Asset:

1. Open your URP Asset in the **Inspector** window.
2. Expand the **Quality** section.
3. Set desired the **Render Scale** value.

You can also change this value with the UniversalRenderPipeline.asset.renderScale API.

### Enable automatic viewport dynamic resolution (OpenXR)

In Unity 6.3 and newer with OpenXR 1.16 and newer, you can use the Automatic viewport dynamic resolution feature to automatically control resolution on OpenXR runtimes. To learn more, refer to Automatic viewport dynamic resolution (OpenXR package documentation).

## Control resolution with HDRP

If your project uses HDRP, you can use the dynamic resolution system or change the `XRSettings.eyeTextureResolutionScale` as outlined in Configure HDRP for virtual reality.

**Note**: `XRSettings.renderViewportScale` isn’t supported on HDRP.

## Additional resources

- Dynamic resolution
- Optimize for untethered XR devices in URP
