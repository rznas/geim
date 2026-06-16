<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRDisplaySubsystem-scaleOfAllRenderTargets.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Controls the size of the textures submitted to the display as a multiplier of the display's default resolution.

A value of 1.0 uses the default texture resolution specified by the display provider. Values less than 1.0 use lower resolution textures, which might improve performance at the expense of a less sharp image. Values greater than 1.0 use higher resolution textures, resulting in a potentially sharper image at a cost to performance and increased memory usage.

When this property changes, textures are always reallocated, which can negatively impact performance. To dynamically change texture resolution on the fly, consider using XRDisplaySubsystem.scaleOfAllViewports.
