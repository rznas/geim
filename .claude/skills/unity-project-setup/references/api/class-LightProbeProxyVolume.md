<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/class-LightProbeProxyVolume.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Introduction to Light Probe Proxy Volumes in the Built-In Render Pipeline

The **Light Probe Proxy Volume** (LPPV) component allows you to use more lighting information for large dynamic **GameObjects** that cannot use baked **lightmaps** (for example, large Particle Systems or skinned Meshes).

By default, a probe-lit Renderer receives lighting from a single Light Probe that is interpolated between the surrounding Light Probes in the **Scene**. Because of this, GameObjects have constant ambient lighting across the surface. This lighting has a rotational gradient because it is using spherical harmonics, but it lacks a spatial gradient. This is more noticeable on larger GameObjects or **Particle** Systems. The lighting across the GameObject matches the lighting at the anchor point, and if the GameObject straddles a lighting gradient, parts of the GameObject may look incorrect.

The **Light Probe Proxy Volume** component generates a 3D grid of interpolated Light Probes inside a **Bounding Volume**. You can specify the resolution of this grid in the UI of the component. The spherical harmonics (SH) coefficients of the interpolated Light Probes are uploaded into 3D textures. The 3D textures containing SH coefficients are then sampled at render time to compute the contribution to the diffuse ambient lighting. This adds a spatial gradient to probe-lit GameObjects.

The Standard Shader supports this feature. To add this to a custom **shader**, use the `ShadeSHPerPixel` function. To learn how to implement this function, see the Particle System sample Shader code example at the bottom of this page.

## Render pipeline support

See render pipeline feature comparison for more information about support for the Light Probe Proxy Volume component across **render pipelines**.

## Images for comparison

1. A simple **Mesh** Renderer using a Standard Shader:   With Light Probe Proxy Volume (resolution: 4x1x1)    Without Light Probe Proxy Volume
2. A skinned **Mesh Renderer** using a Standard Shader:   With Light Probe Proxy Volume (resolution: 2x2x2)    Without Light Probe Proxy Volume

## Hardware requirements

The component requires at least Shader Model 4 graphics hardware and API support, including support for 3D Textures with 32-bit or 16-bit floating-point format and linear filtering.

To work correctly, the Scene needs to contain Light Probes via **Light Probe Group** components. If a requirement is not fulfilled, the Renderer or Light Probe Proxy Volume component **Inspector** displays a warning message.

LightProbeProxyVolume
