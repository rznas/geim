<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRSettings-eyeTextureResolutionScale.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Controls the actual size of eye textures as a multiplier of the device's default resolution.

A value of 1.0 will use the default eye texture resolution specified by the XR device. Values less than 1.0 will use lower resolution eye textures, which may improve performance at the expense of a less sharp image. Values greater than 1.0 will use higher resolution eye textures, resulting in a potentially sharper image at a cost to performance and increased memory usage.

When this property is changed, eye textures are always reallocated, which can be an expensive operation. To dynamically change eye render resolution, consider using XRSettings.renderViewportScale instead. Refer to Resolution control in XR projects to learn more about how to control resolution in your XR project for different render pipelines.
