<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ModelImporter.ExtractTextures.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| folderPath | The directory where the textures will be extracted. |

### Returns

**bool** Returns true if the textures are extracted successfully, otherwise false.

### Description

Extracts the embedded textures from a model file (such as FBX or SketchUp).

Throws **ArgumentException** if the folder path is *null* or empty.
