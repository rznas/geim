<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.LightEvent.AfterScreenspaceMask.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

After directional light screenspace shadow mask is computed.

Directional lights when using non-mobile shadows "gather" shadowmap into a screenspace buffer and do PCF filtering during this step. Later on actual object rendering just samples this screenspace buffer.

This light event will execute command buffers when the screenspace mask is computed, and the active render target is still the screenspace mask.
