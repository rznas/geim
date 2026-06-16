<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextureImporterSwizzle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options for where texture color channel data comes from in the TextureImporter.

By default, the Texture Importer maps each color channel from the source image to the same color channel in the imported texture. For example, the default value of TextureImporter.swizzleR is TextureImporterSwizzle.R.

Additional resources: TextureImporter.swizzleR, TextureImporter.swizzleG, TextureImporter.swizzleB, TextureImporter.swizzleA.

### Properties

| Property | Description |
| --- | --- |
| R | Use the red color channel. |
| G | Use the green color channel. |
| B | Use the blue color channel. |
| A | Use the alpha color channel. |
| OneMinusR | Use the inverted red color channel. |
| OneMinusG | Use the inverted green color channel. |
| OneMinusB | Use the inverted blue color channel. |
| OneMinusA | Use the inverted alpha color channel. |
| Zero | Use black (a value of zero) for the color channel. |
| One | Use white (a value of one) for the color channel. |
