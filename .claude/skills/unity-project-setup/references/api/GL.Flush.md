<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GL.Flush.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sends queued-up commands in the driver's command buffer to the GPU.

When Direct3D 11 is the active graphics API, this call maps to ID3D11DeviceContext::Flush. When Direct3D 12 is the active graphics API, pending command lists are executed. When OpenGL is the active graphics API, this call maps to glFlush.
