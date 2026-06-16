<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MaterialEditor.TexturePropertySingleLine.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| label | The label used for the texture property. |
| textureProp | The texture property. |
| extraProperty1 | First optional property inlined after the texture property. |
| extraProperty2 | Second optional property inlined after the extraProperty1. |

### Returns

**Rect** Returns the Rect used.

### Description

Method for showing a texture property control with additional inlined properites.

This method can be used if multiple controls is wanted on the same line. The texture is shown using the mini thumbnail. Usefull for compact representation of properties of up to three material properties. Additional resources: TexturePropertyTwoLines, ShaderGUI.
