<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderTextureCreationFlags.DynamicallyScalableExplicit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Set this flag to mark this RenderTexture for Dynamic Resolution, if the target platform/graphics API supports Dynamic Resolution.

If you set this flag, you need to scale the render texture manually, instead of using `ScalableBufferManager.ResizeBuffers`.

This flag is mutually exclusive with RenderTextureCreationFlags.DynamicallyScalable. Refer to RenderTexture.ApplyDynamicScale and Dynamic resolution for more details.
