<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRDisplaySubsystem.AddGraphicsThreadMirrorViewBlit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| cmd | The target CommandBuffer that records the native blit event. |
| allowGraphicsStateInvalidate | True causes the graphics device to invalidate internal states before and after calling into the provider's native blit. This ensures the GFX internal states' consistency with the cost of some runtime performance. |
| mode | The XRMirrorViewBlitMode XR display should perform. |

### Returns

**bool** Returns true if native blit event is successfully recorded. Returns false otherwise.

### Description

This function records the display subsystem's native blit event to the target command buffer. This function is typically called by a scriptable rendering pipeline.
