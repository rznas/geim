<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera-forceIntoRenderTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Should camera rendering be forced into a RenderTexture.

If set to true camera rendering will always happen into a RenderTexture instead of direct into the backbuffer. This can be useful if you have no image effects but want to use command buffers to act on the current rendering target.
