<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderTexture.DiscardContents.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| discardColor | Should the colour buffer be discarded? |
| discardDepth | Should the depth buffer be discarded? |

### Description

Hint the GPU driver that the contents of the RenderTexture will not be used.

On some platforms, it can be good for performance if you indicate when the current contents of a RenderTexture aren't needed any more. This can save copying it from one kind of memory to another when the texture is reused. Xbox 360, XBox One and many mobile GPUs benefit from this.

This call is typically only meaningful when the given RenderTexture is currently an active render target. After this call, the contents of the RenderTexture are undefined, so the user should not attempt to access its contents before either clearing the RenderTexture or drawing into each pixel of it.

Both the colour buffer and depth buffer are discarded by default but either can be selected individually using the optional boolean parameters.
