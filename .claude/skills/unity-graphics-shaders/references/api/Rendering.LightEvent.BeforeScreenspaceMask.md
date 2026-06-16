<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.LightEvent.BeforeScreenspaceMask.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Before directional light screenspace shadow mask is computed.

Directional lights when using non-mobile shadows "gather" shadowmap into a screenspace buffer and do PCF filtering during this step. Later on actual object rendering just samples this screenspace buffer.

This light event executes command buffers when the screen-space mask render target is set and cleared, and the shadow cascade parameters are set. Note that the shadow mask is not yet computed.
