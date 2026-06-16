<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.MeshGenerationContext.Allocate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| vertexCount | The number of vertices to allocate. The maximum is 65535 (or UInt16.MaxValue). |
| indexCount | The number of triangle list indices to allocate. Each 3 indices represent one triangle, so this value should be multiples of 3. |
| texture | An optional texture to be applied on the triangles allocated. Pass null to rely on vertex colors only. |

### Returns

**MeshWriteData** An object that gives access to the newely allocated data. If the returned vertex count is 0, the allocation failed (the system ran out of memory).

### Description

Allocates and draws the specified number of vertices and indices required to express geometry for drawing the content of a VisualElement.

See Vertex.position for details on geometry generation conventions. When the vertices are indexed, the triangles described must follow clock-wise winding order given that Y+ goes down. 

 If a valid texture was passed, then the Vertex.uv values should be used to map the texture to the geometry. 

 You can call `MeshGenerationContext.Allocate()` multiple times for the same element or context. To optimize performance, minimize the number of calls whenever possible. 

 Additional resources: MeshWriteData

```csharp
//This example creates a custom element that dynamically renders a textured rectangle 
//based on the element’s size. using UnityEngine;
using UnityEngine.UIElements;public class TexturedElement : VisualElement
{
    static readonly Vertex[] k_Vertices = new Vertex[4];
    static readonly ushort[] k_Indices = { 0, 1, 2, 2, 3, 0 };    static TexturedElement()
    {
        k_Vertices[0].tint = Color.white;
        k_Vertices[1].tint = Color.white;
        k_Vertices[2].tint = Color.white;
        k_Vertices[3].tint = Color.white;        k_Vertices[0].uv = new Vector2(0, 0);
        k_Vertices[1].uv = new Vector2(0, 1);
        k_Vertices[2].uv = new Vector2(1, 1);
        k_Vertices[3].uv = new Vector2(1, 0);
    }    Texture2D m_Texture;    public TexturedElement()
    {
        //This element grows to fill the available space.
        style.flexGrow = 1.0f;
        
        //Subscribes the OnGenerateVisualContent method to the generateVisualContent delegate.
        generateVisualContent += OnGenerateVisualContent;        //Create a simple 2x2 checkerboard texture.
        m_Texture = new Texture2D(2, 2);
        m_Texture.SetPixels(new Color[] {
            Color.white, Color.black,
            Color.black, Color.white
        });
        m_Texture.Apply();        //You can also load a texture from a file.
        //m_Texture = AssetDatabase.LoadAssetAtPath<Texture2D>("Assets/tex.png");
    }    //This method is called when the element needs to render its content.
    void OnGenerateVisualContent(MeshGenerationContext mgc)
    {
        Rect r = contentRect;
        if (r.width < 0.01f || r.height < 0.01f)
            return; // Skip rendering when too small.        float left = 0;
        float right = r.width;
        float top = 0;
        float bottom = r.height;        k_Vertices[0].position = new Vector3(left, bottom, Vertex.nearZ);
        k_Vertices[1].position = new Vector3(left, top, Vertex.nearZ);
        k_Vertices[2].position = new Vector3(right, top, Vertex.nearZ);
        k_Vertices[3].position = new Vector3(right, bottom, Vertex.nearZ);        MeshWriteData mwd = mgc.Allocate(k_Vertices.Length, k_Indices.Length, m_Texture);        mwd.SetAllVertices(k_Vertices);
        mwd.SetAllIndices(k_Indices);
    }
}
```
