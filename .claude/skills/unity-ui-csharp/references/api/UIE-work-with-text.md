<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/UIE-work-with-text.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Work with text

Text objects are defined by the following attributes of a UI control:

- The `text` attribute of some UI controls, such as Label or TextElement, that sets the display text.
- The `value` attribute of the TextField that accepts the input text, and the `label` attribute that sets the display text for TextField.

You can use USS text properties to style text, such as set the font size and color, etc.

You can also add a new font to style text. Convert fonts to font assets before you use them in your project. In addition to USS styling, you can use rich text tags to style certain words in a text string.

| **Topic** | **Description** |
| --- | --- |
| Get started with text | Learn how to style text, create fonts, and style with rich text tags and style sheets by examples. |
| Advanced Text Generator | Add comprehensive Unicode support and text shaping capabilities to your project. |
| Style text with USS | Style text with USS text properties inline in UXML, a USS file, or directly in UI Builder. |
| Style text with rich text tags | Style words between tags in a text string. |
| Font assets | Understand different font assets and all their properties. |
| Text effects | Apply text effects to text elements to enhance the visual appearance of the text. |
| Style sheet assets | Create custom text styles to extend the rich text tags. |
| Use sprites in text | Create **sprite** assets to interpret emoji characters and include them in text. |
| Color gradients | Create color gradients to apply up to four colors for each character in a text string. |
| Color emojis | Include color glyphs and emojis in text. |
| Language direction | Set the text directionality of a text element to support right-to-left (RTL) languages. |
| UITK Text Settings assets | Referenced by a Panel Settings asset and controls the default values for all text objects used within that Panel. |
| Fallback font | Add fallback font for missing character in a font asset. |
| Create custom text animation | Use the `TextElement.PostProcessTextVertices` API to create custom text animation |

## Additional resources

- MeshGenerationContext
- UI Renderer
- 📖 **E-Book**: UI Toolkit for advanced Unity developers - Graphic and font assets preparation
- 📖 **E-Book**: UI Toolkit for advanced Unity developers - Text
