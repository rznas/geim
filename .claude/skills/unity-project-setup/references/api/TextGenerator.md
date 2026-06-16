<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextGenerator.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Class that can be used to generate text for rendering.

Caches vertices, character info, and line info for memory friendlyness.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public Font font;
    void Start()
    {
        TextGenerationSettings settings = new TextGenerationSettings();
        settings.textAnchor = TextAnchor.MiddleCenter;
        settings.color = Color.red;
        settings.generationExtents = new Vector2(500.0F, 200.0F);
        settings.pivot = Vector2.zero;
        settings.richText = true;
        settings.font = font;
        settings.fontSize = 32;
        settings.fontStyle = FontStyle.Normal;
        settings.verticalOverflow = VerticalWrapMode.Overflow;
        TextGenerator generator = new TextGenerator();
        generator.Populate("I am a string", settings);
        Debug.Log("I generated: " + generator.vertexCount + " verts!");
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| characterCount | The number of characters that have been generated. |
| characterCountVisible | The number of characters that have been generated and are included in the visible lines. |
| characters | Array of generated characters. |
| fontSizeUsedForBestFit | The size of the font that was found if using best fit mode. |
| lineCount | Number of text lines generated. |
| lines | Information about each generated text line. |
| rectExtents | Extents of the generated text in rect format. |
| vertexCount | Number of vertices generated. |
| verts | Array of generated vertices. |

### Constructors

| Constructor | Description |
| --- | --- |
| TextGenerator | Create a TextGenerator. |

### Public Methods

| Method | Description |
| --- | --- |
| GetCharacters | Populate the given List with UICharInfo. |
| GetCharactersArray | Returns the current UICharInfo. |
| GetLines | Populate the given list with UILineInfo. |
| GetLinesArray | Returns the current UILineInfo. |
| GetPreferredHeight | Given a string and settings, returns the preferred height for a container that would hold this text. |
| GetPreferredWidth | Given a string and settings, returns the preferred width for a container that would hold this text. |
| GetVertices | Populate the given list with generated Vertices. |
| GetVerticesArray | Returns the current UIVertex array. |
| Invalidate | Mark the text generator as invalid. This will force a full text generation the next time Populate is called. |
| Populate | Will generate the vertices and other data for the given string with the given settings. |
| PopulateWithErrors | Will generate the vertices and other data for the given string with the given settings. |
