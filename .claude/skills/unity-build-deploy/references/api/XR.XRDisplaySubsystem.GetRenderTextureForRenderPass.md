<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRDisplaySubsystem.GetRenderTextureForRenderPass.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| renderPass | The render pass index to get the render texture for. |

### Returns

**RenderTexture** The render texture associated with that render pass, or null if not found.

### Description

Given a render pass, return the RenderTexture instance backing that render pass. If the render pass is invalid, or if the render texture does not exist, return null.
