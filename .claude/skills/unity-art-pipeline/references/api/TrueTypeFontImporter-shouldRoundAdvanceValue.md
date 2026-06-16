<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TrueTypeFontImporter-shouldRoundAdvanceValue.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Set this property to true if you want to round the internal advance width of the font to the nearest integer.

When positioning characters, the cumulated error induced by a rounded advance width may cause the spacing between characters to look inconsistent. Note that the integer CharacterInfo.advance is always rounded to the nearest integer, independently of this flag.
