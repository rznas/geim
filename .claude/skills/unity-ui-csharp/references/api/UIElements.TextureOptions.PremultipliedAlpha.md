<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.TextureOptions.PremultipliedAlpha.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The texture content is alpha-premultiplied.

In premultiplied alpha, the RGB channels have been multiplied by the alpha channel. A typical source is a RenderTexture that has had transparent geometry rendered to it using standard alpha blending (e.g. Blend SrcAlpha OneMinusSrcAlpha), which stores premultiplied results. Some operations may require converting to straight alpha by dividing RGB by alpha.
