<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRDisplaySubsystem.XRBlitParams.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This struct holds data for a single blit operation.

### Properties

| Property | Description |
| --- | --- |
| destRect | Destination Rect area that the blit operation wants to blit to. |
| foveatedRenderingInfo | A pointer to a native struct containing platform-specific data for foveated rendering. |
| srcHdrColorGamut | The ColorGamut of the source texture if srcHdrEncoded is true. |
| srcHdrEncoded | Specifies whether the source texture is encoded for use with an HDR display and might require decoding during the blit process. |
| srcHdrMaxLuminance | The maximum luminance in nits of the encoding used for the source texture if srcHdrEncoded is true. |
| srcRect | Source Rect area that the blit operation wants to blit from. |
| srcTex | Source render texture that the blit operation wants to blit from. |
| srcTexArraySlice | Describes source texture's desired array slice. Texture2D will have array slice 1. |
