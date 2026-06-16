<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ImageEffectTransformsToLDR.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

When using HDR rendering it can sometime be desirable to switch to LDR rendering during ImageEffect rendering.

Using this Attribute on an image effect will cause the destination buffer to be an LDR buffer, and switch the rest of the Image Effect pipeline into LDR mode. It is the responsibility of the Image Effect that this Attribute is associated to ensure that the output is in the LDR range.
