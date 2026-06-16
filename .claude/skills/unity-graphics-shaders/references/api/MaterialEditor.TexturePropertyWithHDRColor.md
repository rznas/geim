<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MaterialEditor.TexturePropertyWithHDRColor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| label | The label used for the texture property. |
| textureProp | The texture property. |
| colorProperty | The color property (will be treated as a HDR color). |
| showAlpha | If false then the alpha channel information will be hidden in the GUI. |

### Returns

**Rect** Return the Rect used.

### Description

Method for showing a texture property control with a HDR color field and its color brightness float field.

The texture is shown using the mini thumbnail. Usefull for compact representation of a texture and a HDR color. Additional resources: TexturePropertySingleLine, ShaderGUI.
