<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GL.TRIANGLES.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Mode for Begin: draw triangles.

Draws triangles using each set of 3 vertices passed. If you pass 3 vertices, one triangle is drawn, where each vertex becomes one corner of the triangle. If you pass 6 vertices, 2 triangles will be drawn.

To set up the screen for drawing in 2D, use GL.LoadOrtho or GL.LoadPixelMatrix. To set up the screen for drawing in 3D, use GL.LoadIdentity followed by GL.MultMatrix with the desired transformation matrix.

Additional resources: GL.Begin, GL.End.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Draws a triangle that covers the middle of the screen
    Material mat;    void OnPostRender()
    {
        if (!mat)
        {
            Debug.LogError("Please Assign a material on the inspector");
            return;
        }
        GL.PushMatrix();
        mat.SetPass(0);
        GL.LoadOrtho();
        GL.Begin(GL.TRIANGLES);
        GL.Vertex3(0, 0, 0);
        GL.Vertex3(1, 1, 0);
        GL.Vertex3(0, 1, 0);
        GL.End();
        GL.PopMatrix();
    }
}
```
