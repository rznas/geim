<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ImageEffectOpaque.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Any Image Effect with this attribute will be rendered after opaque geometry but before transparent geometry.

This allows for effects which extensively use the depth buffer (SSAO, etc) to affect only opaque pixels. This attribute can be used to reduce the amount of visual artifacts in a Scene with post processing.
