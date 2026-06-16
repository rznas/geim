<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CopyTextureSupport.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Support for various Graphics.CopyTexture cases.

Most modern platforms and graphics APIs support quite flexible texture copy (e.g. copy from a RenderTexture into a Cubemap face). However some older systems might not support certain parts of texture copy functionality. This enum indicates support for this. Use SystemInfo.copyTextureSupport to check for support before calling Graphics.CopyTexture.

Direct3D11, DirectD12, Metal and PS4 platforms generally support flexible texture copy (all CopyTextureSupport flags are set).

OpenGL supports flexible texture copy since OpenGL 4.3; OpenGL ES supports flexible texture copy since OpenGL ES 3.1 with Android Extension Pack; on earlier versions there's no copy support right now (CopyTextureSupport.None).

Direct3D9 systems have somewhat limited texture copy support (can't copy 3D textures, and can't copy between textures and render textures).

WebGL currently do not have texture copy support (CopyTextureSupport.None).

Additional resources: Graphics.CopyTexture, SystemInfo.copyTextureSupport.

### Properties

| Property | Description |
| --- | --- |
| None | No support for Graphics.CopyTexture. |
| Basic | Basic Graphics.CopyTexture support. |
| Copy3D | Support for Texture3D in Graphics.CopyTexture. |
| DifferentTypes | Support for Graphics.CopyTexture between different texture types. |
| TextureToRT | Support for Texture to RenderTexture copies in Graphics.CopyTexture. |
| RTToTexture | Support for RenderTexture to Texture copies in Graphics.CopyTexture. |
