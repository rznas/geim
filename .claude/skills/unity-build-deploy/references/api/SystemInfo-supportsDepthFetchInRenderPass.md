<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemInfo-supportsDepthFetchInRenderPass.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates whether RenderPass can use its depth attachment as input. (Read Only)

When RenderPass is emulated (e.g. D3D11 or OpenGL Core) this is always possible since the temporary copy will be used. When native RenderPass is used it depends on the platform support; for example Metal disallows reading from depth attachment
