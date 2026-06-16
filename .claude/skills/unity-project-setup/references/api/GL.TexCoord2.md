<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GL.TexCoord2.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets current texture coordinate (x,y) for all texture units.

In OpenGL this matches `glMultiTexCoord` for all texture units or `glTexCoord` when no multi-texturing is available. On other graphics APIs the same functionality is emulated.

This function can only be called between GL.Begin and GL.End functions.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Draws a Quad in the middle of the screen and
    // Adds the material's Texture to it.    Material mat;
    void OnPostRender()
    {
        if (!mat)
        {
            Debug.LogError("Please Assign a material on the inspector");
            return;
        }
        GL.PushMatrix();
        mat.SetPass(1);
        GL.LoadOrtho();
        GL.Begin(GL.QUADS);
        GL.TexCoord2(0, 0);
        GL.Vertex3(0.25f, 0.25f, 0);
        GL.TexCoord2(0, 1);
        GL.Vertex3(0.25f, 0.75f, 0);
        GL.TexCoord2(1, 1);
        GL.Vertex3(0.75f, 0.75f, 0);
        GL.TexCoord2(1, 0);
        GL.Vertex3(0.75f, 0.25f, 0);
        GL.End();
        GL.PopMatrix();
    }
}
```
