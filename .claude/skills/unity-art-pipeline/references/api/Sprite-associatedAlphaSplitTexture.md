<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Sprite-associatedAlphaSplitTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the Texture that contains the alpha channel from the source Texture. Unity generates this Texture under the hood for Sprites that have alpha in the source, and need to be compressed using techniques like ETC1.

Returns NULL if there is no associated alpha Texture for the source Sprite. This is the case if the Sprite has not been setup to use ETC1 compression.
