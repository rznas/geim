<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MaterialEditor.TexturePropertyTwoLines.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| label | The label used for the texture property. |
| textureProp | The texture property. |
| extraProperty1 | First extra property inlined after the texture property. |
| label2 | Label for the second extra property (on a new line and indented). |
| extraProperty2 | Second property on a new line below the texture. |

### Returns

**Rect** Returns the Rect used.

### Description

Method for showing a compact layout of properties.

The texture is shown using the mini thumbnail that fits on a single line. The first extra property is shown inlined after the texture property and the second extra property is shown below on a new line with it's own label. Additional resources: TexturePropertySingleLine, ShaderGUI.
