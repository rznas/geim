<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ImageEffectAfterScale.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Any Image Effect with this attribute will be rendered after Dynamic Resolution stage.

If you wish your image effect to be applied after the Dynamic Resolution has scaled back up add this attribute. The effect will be rendered at full resolution, important for effects that are in some way dependant on the screen width and height being a certain size.
