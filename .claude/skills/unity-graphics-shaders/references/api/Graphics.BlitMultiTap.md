<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Graphics.BlitMultiTap.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| source | Source texture. |
| dest | Destination RenderTexture, GraphicsTexture, or `null` to blit directly to screen. |
| mat | Material to use for copying. Material's shader should do some post-processing effect. |
| offsets | Variable number of filtering offsets. Offsets are given in pixels. |
| destDepthSlice | The texture array destination slice to blit to. |

### Description

Copies source texture into destination, for multi-tap shader.

This is mostly used for implementing some post-processing effects. For example, Gaussian or iterative Cone blurring samples source texture at multiple different locations.

BlitMultiTap sets `dest` to be the active render target (changing RenderTexture.active and GraphicsTexture.active), sets `source` as `_MainTex` property on the material, and draws a full-screen quad. Each vertex of the quad has multiple texture coordinates set up, offset by `offsets` pixels.

BlitMultiTap has the same limitations as Graphics.Blit.

Additional resources: Graphics.Blit, post-processing effects.
