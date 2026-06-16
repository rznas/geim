<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture2D.EXRFlags.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Flags used to control the encoding to an EXR file.

Additional resources: ImageConversion.EncodeToEXR.

### Properties

| Property | Description |
| --- | --- |
| None | No flag. This will result in an uncompressed 16-bit float EXR file. |
| OutputAsFloat | The texture will be exported as a 32-bit float EXR file (default is 16-bit). |
| CompressZIP | The texture will use the EXR ZIP compression format. |
| CompressRLE | The texture will use RLE (Run Length Encoding) EXR compression format (similar to Targa RLE compression). |
| CompressPIZ | This texture will use Wavelet compression. This is best used for grainy images. |
