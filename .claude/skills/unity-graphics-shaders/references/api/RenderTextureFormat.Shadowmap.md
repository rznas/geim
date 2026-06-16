<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderTextureFormat.Shadowmap.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A native shadowmap render texture format.

This represents a format for which the GPU can automatically do shadowmap comparisons for. Unity uses this format internally for shadows, when supported. Note that some platforms or GPUs do not support Shadowmap format, in which case shadows end up using RenderTextureFormat.Depth format.

Additional resources: RenderTexture class, SystemInfo.SupportsRenderTextureFormat.
