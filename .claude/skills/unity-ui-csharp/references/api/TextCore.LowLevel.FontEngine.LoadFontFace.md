<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextCore.LowLevel.FontEngine.LoadFontFace.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| filePath | The path of the source font file relative to the project. |
| pointSize | The point size used to scale the font face. |
| sourceFontFile | The byte array that contains the source font file. |
| font | The font to load the data from. The Unity font must be set to Dynamic mode with Include Font Data selected. |
| faceIndex | The face index of the font face to load. When the font file is a TrueType collection (.TTC), this specifies the face index of the font face to load. If the font file is a TrueType Font (.TTF) or OpenType Font (.OTF) file, the face index is always zero (0). |
| familyName | The family name of the font face to load. |
| styleName | The style name of the font face to load. |

### Returns

**FontEngineError** A value of zero (0) if the font face was loaded successfully.

### Description

Load a source font file.
