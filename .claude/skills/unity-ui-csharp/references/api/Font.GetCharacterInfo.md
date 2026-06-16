<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Font.GetCharacterInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| ch | The character you need rendering information for. |
| info | Returns the CharacterInfo struct with the rendering information for the character (if available). |
| size | The size of the character (default value of zero will use font default size). |
| style | The style of the character. |

### Description

Get rendering info for a specific character.

Note: You should only ever need to use this when you want to implement your own text rendering. If the character `ch` with the specified `size` and `style` is present in the font texture, then this method will return true, and info will contain the texture placement information for that character. If the character is not present, this method returns false. If `size` is zero, it will use the default size for the font.

Additional resources: characterInfo. Example at RequestCharactersInTexture.
