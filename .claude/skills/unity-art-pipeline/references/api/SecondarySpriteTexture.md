<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SecondarySpriteTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Encapsulates a Texture2D and its shader property name to give Sprite-based renderers access to a secondary texture, in addition to the main Sprite texture.

### Properties

| Property | Description |
| --- | --- |
| name | The shader property name of the secondary Sprite texture. Use this name to identify and sample the texture in the shader. |
| texture | The texture to be used as a secondary Sprite texture. |

### Public Methods

| Method | Description |
| --- | --- |
| Equals | Compares this SecondarySpriteTexture object to another one. |
| GetHashCode | Returns a unique hash code computed from the name and texture of this SecondarySpriteTexture object. |

### Operators

| Operator | Description |
| --- | --- |
| operator != | Compares two SecondarySpriteTexture objects and returns true if they are not equal. |
| operator == | Compares two SecondarySpriteTexture objects and returns true if they are equal. |
