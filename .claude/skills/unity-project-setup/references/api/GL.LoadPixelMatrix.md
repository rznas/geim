<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GL.LoadPixelMatrix.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Setup a matrix for pixel-correct rendering.

Loads an orthographic projection into the projection matrix and loads an identity into the model and view matrices. The projection matrix is such that the X and Y coordinates map directly to pixels. The coordinate (0,0) is at the bottom left corner of current camera's viewport. The Z coordinates go from 1 at the near plane to -100 at the far plane.

Changing the model, view or projection matrices overrides the current rendering matrices. It is good practice to save and restore these matrices using GL.PushMatrix and GL.PopMatrix.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Draws a red triangle using pixels as coordinates to paint on.
    Material mat;    void OnPostRender()
    {
        if (!mat)
        {
            Debug.LogError("Please Assign a material on the inspector");
            return;
        }
        GL.PushMatrix();
        mat.SetPass(0);
        GL.LoadPixelMatrix();        GL.Begin(GL.TRIANGLES);
        GL.Color(Color.red);
        GL.Vertex3(0, 0, 0);
        GL.Vertex3(0, Screen.height / 2, 0);
        GL.Vertex3(Screen.width / 2, Screen.height / 2, 0);
        GL.End();        GL.PopMatrix();
    }
}
```

### Description

Setup a matrix for pixel-correct rendering.

Loads an orthographic projection into the projection matrix and loads an identity into the model and view matrices. The projection matrix is such that the X and Y coordinates map directly to pixels. The (left,bottom) is at the bottom left corner of current camera's viewport; and (top,right) is at the top right corner of current camera's viewport. The Z coordinates go from 1 at the near plane to -1 at the far plane.

Changing the model, view or projection matrices overrides the current rendering matrices. It is good practice to save and restore these matrices using GL.PushMatrix and GL.PopMatrix.
