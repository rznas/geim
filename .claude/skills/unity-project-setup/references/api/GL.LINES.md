<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GL.LINES.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Mode for Begin: draw lines.

Draws lines between each pair of vertices passed. If you pass four vertices, A, B, C and D, two lines are drawn: one between A and B, and one between C and D.

To set up the screen for drawing in 2D, use GL.LoadOrtho or GL.LoadPixelMatrix. To set up the screen for drawing in 3D, use GL.LoadIdentity followed by GL.MultMatrix with the desired transformation matrix.

Additional resources: GL.Begin, GL.End.

```csharp
//Attach this script to a GameObject with a Camera componentusing UnityEngine;public class Example : MonoBehaviour
{
    // Draws a line from "startVertex" var to the curent mouse position.
    public Material mat;
    Vector3 startVertex;
    Vector3 mousePos;    void Start()
    {
        startVertex = Vector3.zero;
    }    void Update()
    {
        mousePos = Input.mousePosition;
        // Press space to update startVertex
        if (Input.GetKeyDown(KeyCode.Space))
        {
            startVertex = new Vector3(mousePos.x / Screen.width, mousePos.y / Screen.height, 0);
        }
    }    void OnPostRender()
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
        GL.Vertex(startVertex);
        GL.Vertex(new Vector3(mousePos.x / Screen.width, mousePos.y / Screen.height, 0));
        GL.End();        GL.PopMatrix();
    }
}
```
