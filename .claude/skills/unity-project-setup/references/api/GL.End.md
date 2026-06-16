<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GL.End.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

End drawing 3D primitives.

In OpenGL this matches `glEnd`; on other graphics APIs the same functionality is emulated.

Additional resources: GL.Begin.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Draws a Triangle, a Quad and a line
    // with different colors    Material mat;
    void  OnPostRender()
    {
        if (!mat)
        {
            Debug.LogError("Please Assign a material on the inspector");
            return;
        }
        GL.PushMatrix();
        mat.SetPass(0);
        GL.LoadOrtho();        GL.Begin(GL.TRIANGLES); // Triangle
        GL.Color(new Color(1, 1, 1, 1));
        GL.Vertex3(0.50f, 0.25f, 0);
        GL.Vertex3(0.25f, 0.25f, 0);
        GL.Vertex3(0.375f, 0.5f, 0);
        GL.End(); // End drawing Triangle        GL.Begin(GL.QUADS); // Quad
        GL.Color(new Color(0.5f, 0.5f, 0.5f, 1));
        GL.Vertex3(0.5f, 0.5f, 0);
        GL.Vertex3(0.5f, 0.75f, 0);
        GL.Vertex3(0.75f, 0.75f, 0);
        GL.Vertex3(0.75f, 0.5f, 0);
        GL.End(); // End drawing quad        GL.Begin(GL.LINES); // Line
        GL.Color(new Color(0, 0, 0, 1));
        GL.Vertex3(0, 0, 0);
        GL.Vertex3(0.75f, 0.75f, 0);
        GL.End(); // End drawing Line        GL.PopMatrix();
    }
}
```
