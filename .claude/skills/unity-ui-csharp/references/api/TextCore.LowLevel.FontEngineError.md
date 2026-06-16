<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextCore.LowLevel.FontEngineError.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Error code returned by the various FontEngine functions.

### Properties

| Property | Description |
| --- | --- |
| Success | Error code returned when the function was successfully executed. |
| Invalid_File_Path | Error code returned by the LoadFontFace function when the file path to the source font file appears invalid. |
| Invalid_File_Format | Error code returned by the LoadFontFace function when the source font file is of an unknown or invalid format. |
| Invalid_File_Structure | Error code returned by the LoadFontFace function when the source font file appears invalid or improperly formatted. |
| Invalid_File | Error code indicating an invalid font file. |
| Invalid_Table | Error code indicating failure to load one of the tables of the font file. |
| Invalid_Glyph_Index | Error code returned by the LoadGlyph function when referencing an invalid or out of range glyph index value. |
| Invalid_Character_Code | Error code returned by the LoadGlyph function when referencing an invalid Unicode character value. |
| Invalid_Pixel_Size | Error code returned by the LoadGlyph or SetFaceSize functions using an invalid pointSize value. |
| Invalid_Library | Error code indicating failure to initialize the font engine library. |
| Invalid_Face | Error code indicating an invalid font face. |
| Invalid_Library_or_Face | Error code indicating failure to initialize the font engine library and / or successfully load a font face. |
| Atlas_Generation_Cancelled | Error code returned when the FontEngine glyph packing or rendering process has been cancelled. |
| OpenTypeLayoutLookup_Mismatch | OpenType Layout related errors. |
