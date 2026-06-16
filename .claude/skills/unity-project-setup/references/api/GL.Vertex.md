<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GL.Vertex.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Submit a vertex.

In OpenGL this matches `glVertex3f(v.x,v.y,v.z)`; on other graphics APIs the same functionality is emulated.

This function can only be called between GL.Begin and GL.End functions.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Draws a line from the bottom right
    // to the top left of the Screen
    // Using GL.Vertex
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
        GL.Begin(GL.LINES);
        GL.Vertex(new Vector3(1, 0, 0));
        GL.Vertex(new Vector3(0, 1, 0));
        GL.End();
        GL.PopMatrix();
    }
}
```
