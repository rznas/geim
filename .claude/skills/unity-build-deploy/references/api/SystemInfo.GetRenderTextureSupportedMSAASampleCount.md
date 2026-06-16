<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemInfo.GetRenderTextureSupportedMSAASampleCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| desc | The RenderTextureDescriptor to check. |

### Returns

**int** If the target platform supports the given MSAA samples count of RenderTextureDescriptor, returns the given MSAA samples count. Otherwise returns a lower fallback MSAA samples count value that the target platform supports.

### Description

Checks if the target platform supports the MSAA samples count in the RenderTextureDescriptor argument.

Additional resources: RenderTextureDescriptor
