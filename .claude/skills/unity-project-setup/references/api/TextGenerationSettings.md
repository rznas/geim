<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextGenerationSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A struct that stores the settings for TextGeneration.

### Properties

| Property | Description |
| --- | --- |
| alignByGeometry | Use the extents of glyph geometry to perform horizontal alignment rather than glyph metrics. |
| color | The base color for the text generation. |
| font | Font to use for generation. |
| fontSize | Font size. |
| fontStyle | Font style. |
| generateOutOfBounds | Continue to generate characters even if the text runs out of bounds. |
| generationExtents | Extents that the generator will attempt to fit the text in. |
| horizontalOverflow | What happens to text when it reaches the horizontal generation bounds. |
| lineSpacing | The line spacing multiplier. |
| pivot | Generated vertices are offset by the pivot. |
| resizeTextForBestFit | Should the text be resized to fit the configured bounds? |
| resizeTextMaxSize | Maximum size for resized text. |
| resizeTextMinSize | Minimum size for resized text. |
| richText | Allow rich text markup in generation. |
| scaleFactor | A scale factor for the text. This is useful if the Text is on a Canvas and the canvas is scaled. |
| textAnchor | How is the generated text anchored. |
| updateBounds | Should the text generator update the bounds from the generated text. |
| verticalOverflow | What happens to text when it reaches the bottom generation bounds. |
