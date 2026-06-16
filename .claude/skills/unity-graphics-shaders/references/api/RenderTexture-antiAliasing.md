<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderTexture-antiAliasing.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The antialiasing level for the RenderTexture.

Anti-aliasing value indicates the number of samples per pixel. The value can be `1`, `2`, `4` or `8`. If unsupported by the hardware or rendering API, the greatest supported number of samples less than the indicated number is used.

When a RenderTexture is using anti-aliasing, then any rendering into it will happen into the multi-sampled texture, which will be "resolved" into a regular texture when switching to another render target. To the rest of the system only this "resolved" surface is visible.
