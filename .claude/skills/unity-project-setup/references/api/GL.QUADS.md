<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GL.QUADS.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Mode for Begin: draw quads.

Draws quads using each set of 4 vertices passed. If you pass 4 vertices, one quad is drawn, where each vertex becomes one corner of the quad. If you pass 8 vertices, 2 quads will be drawn.

To set up the screen for drawing in 2D, use GL.LoadOrtho or GL.LoadPixelMatrix. To set up the screen for drawing in 3D, use GL.LoadIdentity followed by GL.MultMatrix with the desired transformation matrix.

Additional resources: GL.Begin, GL.End.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Draw red a rombus on the screen
    // and also draw a small cyan Quad in the left corner
    Material mat;
    void OnPostRender()
    {
        if (!mat)
        {
            Debug.LogError("Please Assign a material on the inspector");
            return;
        }
        GL.PushMatrix();
        mat.SetPass(0);
        GL.LoadOrtho();
        GL.Begin(GL.QUADS);
        GL.Color(Color.red);
        GL.Vertex3(0, 0.5f, 0);
        GL.Vertex3(0.5f, 1, 0);
        GL.Vertex3(1, 0.5f, 0);
        GL.Vertex3(0.5f, 0, 0);        GL.Color(Color.cyan);
        GL.Vertex3(0, 0, 0);
        GL.Vertex3(0, 0.25f, 0);
        GL.Vertex3(0.25f, 0.25f, 0);
        GL.Vertex3(0.25f, 0, 0);
        GL.End();
        GL.PopMatrix();
    }
}
```
