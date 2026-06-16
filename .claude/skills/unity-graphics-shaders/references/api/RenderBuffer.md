<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderBuffer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Color or depth buffer part of a RenderTexture.

A single RenderTexture object represents both color and depth buffers, but many complex rendering algorithms require using the same depth buffer with multiple color buffers or vice versa.

This class represents either a color or a depth buffer part of a RenderTexture.

Additional resources: RenderTexture.colorBuffer, RenderTexture.depthBuffer, Graphics.activeColorBuffer, Graphics.activeDepthBuffer, Graphics.SetRenderTarget.

### Public Methods

| Method | Description |
| --- | --- |
| GetNativeRenderBufferPtr | Returns the native RenderBuffer: an opaque pointer to a Unity struct that you can use with Unity's low-level native plug-in interface. |
