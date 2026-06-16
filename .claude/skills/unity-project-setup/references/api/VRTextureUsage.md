<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VRTextureUsage.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This enum describes how the RenderTexture is used as a VR eye texture. Instead of using the values of this enum manually, use the value returned by eyeTextureDesc or other VR functions returning a RenderTextureDescriptor.

### Properties

| Property | Description |
| --- | --- |
| None | The RenderTexture is not a VR eye texture. No special rendering behavior will occur. |
| OneEye | This texture corresponds to a single eye on a stereoscopic display. |
| TwoEyes | This texture corresponds to two eyes on a stereoscopic display. This will be taken into account when using Graphics.Blit and other rendering functions. |
| DeviceSpecific | The texture used by an external XR provider. The provider is responsible for defining the texture's layout and use. |
