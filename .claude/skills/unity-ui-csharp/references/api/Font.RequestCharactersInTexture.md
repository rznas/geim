<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Font.RequestCharactersInTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| characters | The characters which are needed to be in the font texture. |
| size | The size of the requested characters (the default value of zero will use the font's default size). |
| style | The style of the requested characters. |

### Description

Request characters to be added to the font texture (dynamic fonts only).

Note: You should only ever need to use this when you want to implement your own text rendering. Call this function to request Unity to make sure all the characters in the string `characters` are available in the font's font texture (and it's `characterInfo` property). This is useful when you want to implement your own code to render dynamic fonts. You can supply a custom font size and style for the characters. If `size` is zero (the default), it will use the default size for that font.

RequestCharactersInTexture may cause the font texture to be regenerated if it does not have space to add all the requested characters. If the font texture is regenerated it will only contain characters which have been used using Font.RequestCharactersInTexture, or using Unity's text rendering functions during the last frame. So it is advisable to always call RequestCharactersInTexture for any text on the screen you wish to render using custom font rendering functions, even if the characters are currently present in the texture, to make sure they don't get purged during texture rebuild.

Additional resources: textureRebuilt, GetCharacterInfo.

```csharp
using UnityEngine;
using System.Collections;public class CustomFontMeshGenerator : MonoBehaviour
{
    Font font;
    string str = "Hello World";
    Mesh mesh;    void OnFontTextureRebuilt(Font changedFont)
    {
        if (changedFont != font)
            return;        RebuildMesh();
    }    void RebuildMesh()
    {
        // Generate a mesh for the characters we want to print.
        var vertices = new Vector3[str.Length * 4];
        var triangles = new int[str.Length * 6];
        var uv = new Vector2[str.Length * 4];
        Vector3 pos = Vector3.zero;
        for (int i = 0; i < str.Length; i++)
        {
            // Get character rendering information from the font
            CharacterInfo ch;
            font.GetCharacterInfo(str[i], out ch);            vertices[4 * i + 0] = pos + new Vector3(ch.minX, ch.maxY, 0);
            vertices[4 * i + 1] = pos + new Vector3(ch.maxX, ch.maxY, 0);
            vertices[4 * i + 2] = pos + new Vector3(ch.maxX, ch.minY, 0);
            vertices[4 * i + 3] = pos + new Vector3(ch.minX, ch.minY, 0);            uv[4 * i + 0] = ch.uvTopLeft;
            uv[4 * i + 1] = ch.uvTopRight;
            uv[4 * i + 2] = ch.uvBottomRight;
            uv[4 * i + 3] = ch.uvBottomLeft;            triangles[6 * i + 0] = 4 * i + 0;
            triangles[6 * i + 1] = 4 * i + 1;
            triangles[6 * i + 2] = 4 * i + 2;            triangles[6 * i + 3] = 4 * i + 0;
            triangles[6 * i + 4] = 4 * i + 2;
            triangles[6 * i + 5] = 4 * i + 3;            // Advance character position
            pos += new Vector3(ch.advance, 0, 0);
        }
        mesh.vertices = vertices;
        mesh.triangles = triangles;
        mesh.uv = uv;
    }    void Start()
    {
        font = Font.CreateDynamicFontFromOSFont("Helvetica", 16);
        // Set the rebuild callback so that the mesh is regenerated on font changes.
        Font.textureRebuilt += OnFontTextureRebuilt;        // Request characters.
        font.RequestCharactersInTexture(str);        // Set up mesh.
        mesh = new Mesh();
        GetComponent<MeshFilter>().mesh = mesh;
        GetComponent<MeshRenderer>().material = font.material;        // Generate font mesh.
        RebuildMesh();
    }    void Update()
    {
        // Keep requesting our characters each frame, so Unity will make sure that they stay in the font when regenerating the font texture.
        font.RequestCharactersInTexture(str);
    }    void OnDestroy()
    {
        Font.textureRebuilt -= OnFontTextureRebuilt;
    }
}
```
