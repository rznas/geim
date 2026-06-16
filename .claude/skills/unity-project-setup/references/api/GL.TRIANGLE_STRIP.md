<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GL.TRIANGLE_STRIP.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Mode for Begin: draw triangle strip.

Draws triangles between each vertex passed, from the beginning to the end. If you pass five vertices, A, B, C, D and E, three triangles are drawn. The first triangle is drawn between the first 3 vertices. All subsequent triangles use the previous 2 vertices, plus the next additional vertex. In this example, the three drawn triangles will be A, B, C, followed by B, C, D, and finally C, D, E.

To set up the screen for drawing in 2D, use GL.LoadOrtho or GL.LoadPixelMatrix. To set up the screen for drawing in 3D, use GL.LoadIdentity followed by GL.MultMatrix with the desired transformation matrix.

Additional resources: GL.Begin, GL.End.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Draws 2 triangles in the left side of the screen
    // that look like a square    Material mat;    void OnPostRender()
    {
        if (!mat)
        {
            Debug.LogError("Please Assign a material on the inspector");
            return;
        }
        GL.PushMatrix();
        mat.SetPass(0);
        GL.LoadOrtho();
        GL.Begin(GL.TRIANGLE_STRIP);
        GL.Color(new Color(0, 0, 0, 1));
        GL.Vertex3(0.25f, 0.5f, 0);
        GL.Vertex3(0, 0.5f, 0);
        GL.Vertex3(0.25f, 0.25f, 0);
        GL.Vertex3(0, 0.25f, 0);
        GL.End();
        GL.PopMatrix();
    }
}
```
