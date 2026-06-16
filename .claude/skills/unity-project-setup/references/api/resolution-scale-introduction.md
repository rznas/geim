<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/resolution-scale-introduction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Introduction to changing resolution scale

To reduce the amount of work for the GPU and speed up rendering, you can change the resolution of the image Unity renders. For example, you can render at a lower resolution when the frame rate of the application decreases.

When you change the resolution scale, Unity does the following:

1. Renders at a lower resolution.
2. Uses one of several upscaling technique to increases the resolution of the rendered image, so it matches the final image.

If you use the Universal Render Pipeline (URP) or the Built-In Render Pipeline, you can only use dynamic resolution on some platforms.

For more information, refer to:

- Dynamic resolution if you use URP or the Built-In Render Pipeline.
- Dynamic resolution in the High Definition Render Pipeline (HDRP)

## Upscaling techniques

The upscaling techniques depend on the render pipeline you choose and the platform you build for.

The Built-In Render Pipeline always uses a filtering technique the GPU provides.

| **Feature** | **What the feature uses to upscale the image** | **URP** | **HDRP** |
| --- | --- | --- | --- |
| Bilinear | The bilinear or linear filtering the graphics API provides. | Yes. Refer to quality settings in the URP asset | No. |
| Nearest-neighbor | The nearest-neighbor or point sampling filtering the graphics API provides. | Yes. Refer to quality settings in the URP asset | No. |
| Catmull-Rom | Four bilinear samples. | No | Yes. Refer to Choose an upscale filter in HDRP. |
| AMD FidelityFX Contrast Adaptive Sharpen (CAS) | Contrast levels. | No | Yes. Refer to Choose an upscale filter in HDRP. |
| Temporal Anti-Aliasing Upscaling (TAAU) | Data from previous frames. | No | Yes. Refer to Choose an upscale filter in HDRP. |
| Spatial-Temporal **Post-processing** (STP) | Multiple input textures. STP configures itself automatically to provide the best balance of performance and quality based on the platform. | Yes, but you can’t use STP together with dynamic resolution. Refer to Upscaling resolution in URP with STP. | Yes, but you can’t use STP together with software dynamic resolution. Refer to [STP in HDRP](https://docs.unity3d.com/Packages/com.unity.render-pipelines.high-definition@17.0/manual/stp/stp-upscaler). |
| AMD FidelityFX Super Resolution (FSR) 1 | The frame buffer. | Yes. Refer to quality settings in the URP asset. | Yes. Refer to Choose an upscale filter in HDRP. |
| AMD FidelityFX Super Resolution (FSR) 2 | Multiple input textures. | No | Yes. Refer to Choose an upscale filter in HDRP. |
| NVIDIA Deep Learning Super Sampling (DLSS) 4 Super Resolution | Multiple input textures. | No | Yes. Refer to DLSS in HDRP. |

## Additional resources

- Choosing a render pipeline
- [Graphics rendering: Getting the best performance with Unity 6](https://www.youtube.com/watch?v=Oc6T4hh5gaI)
