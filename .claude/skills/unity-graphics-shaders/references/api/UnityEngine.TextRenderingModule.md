<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UnityEngine.TextRenderingModule.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This is a legacy module that is not supported anymore. Use UI Toolkit or uGUI instead.

The TextRendering module provides access to Unity's text rendering system.

### Classes

| Class | Description |
| --- | --- |
| Font | Script interface for font assets. |
| TextGenerator | Class that can be used to generate text for rendering. |
| TextMesh | The TextMesh component allows you to display text in 3D text mesh component.This component dynamically generates a mesh that fits the text specified as input, it is great to make world space UI like displaying names above characters like the example below.Note that Text Mesh Pro is now the preferred solution for creating 3D text as it's more feature complete compared to TextMesh. |

### Structs

| Struct | Description |
| --- | --- |
| CharacterInfo | Specification for how to render a character from the font texture. See Font.characterInfo. |
| TextGenerationSettings | A struct that stores the settings for TextGeneration. |
| UICharInfo | Class that specifies some information about a renderable character. |
| UILineInfo | Information about a generated line of text. |
| UIVertex | Vertex class used by a Canvas for managing vertices. |

### Enumerations

| Enumeration | Description |
| --- | --- |
| FontStyle | Font Style applied to GUI Texts, Text Meshes or GUIStyles. |
| HorizontalWrapMode | Wrapping modes for text that reaches the horizontal boundary. |
| TextAlignment | How multiline text should be aligned. |
| TextAnchor | Where the anchor of the text is placed. |
| TextGeneratorType | Defines the types of text generators to use. |
| VerticalWrapMode | Wrapping modes for text that reaches the vertical boundary. |
