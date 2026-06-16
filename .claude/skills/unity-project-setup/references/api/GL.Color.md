<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GL.Color.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets current vertex color.

In OpenGL this matches `glColor4f(c.r,c.g,c.b,c.a)`; on other graphics APIs the same functionality is emulated.

In order for per-vertex colors to work reliably across different hardware, you have to use a shader that binds in the color channel. See BindChannels documentation.

This function can only be called between GL.Begin and GL.End functions.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Draws a red line from the bottom right
    // to the top left of the Screen
    // And a yellow line from the bottom left
    // to the top right of the Screen
    Material mat;    void OnPostRender()
    {
        if (!mat)
        {
            Debug.LogError("Please Assign a material on the inspector");
            return;
        }
        GL.PushMatrix();
        mat.SetPass(0);
        GL.LoadOrtho();        GL.Begin(GL.LINES);
        GL.Color(Color.red);
        GL.Vertex3(1, 0, 0);
        GL.Vertex3(0, 1, 0);
        GL.Color(Color.yellow);
        GL.Vertex3(0, 0, 0);
        GL.Vertex3(1, 1, 0);
        GL.End();        GL.PopMatrix();
    }
}
```
