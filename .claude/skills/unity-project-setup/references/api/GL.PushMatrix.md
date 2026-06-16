<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GL.PushMatrix.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Saves the model, view and projection matrices to the top of the matrix stack.

Changing the model, view or projection matrices overrides the current rendering matrices. It is good practice to save and restore these matrices using GL.PushMatrix and GL.PopMatrix.

Additional resources: PopMatrix function.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Draw a yellow line from the botton left to the
    // top right of the screen
    Material mat;    void OnPostRender()
    {
        if (!mat)
        {
            Debug.LogError("Please Assign a material on the inspector");
            return;
        }
        GL.PushMatrix(); // Save the current state
        mat.SetPass(0);
        GL.LoadPixelMatrix();
        GL.Color(Color.yellow);
        GL.Begin(GL.LINES);
        GL.Vertex3(0, 0, 0);
        GL.Vertex3(Screen.width, Screen.height, 0);
        GL.End();
        GL.PopMatrix(); // Pop changes.
    }
}
```
