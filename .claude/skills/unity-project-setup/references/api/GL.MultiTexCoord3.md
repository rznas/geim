<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GL.MultiTexCoord3.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets current texture coordinate (x,y,z) to the actual texture `unit`.

In OpenGL this matches `glMultiTexCoord` for the given texture unit if multi-texturing is available. On other graphics APIs the same functionality is emulated.

The Z component is used only when:
 **1.** You access a cubemap (which you access with a vector coordinate, hence x,y & z).
 **2.** You do "projective texturing", where the X & Y coordinates are divided by Z to get the final coordinate. This would be mostly useful for water reflections and similar things.

This function can only be called between GL.Begin and GL.End functions.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Changes between two textures assigned to a material
    // When pressed space
    Material mat;
    bool flagTex = true;    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            if (flagTex)
            {
                flagTex = false;
            }
            else
            {
                flagTex = true;
            }
        }
    }    void OnPostRender()
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
        if (flagTex)
        {
            GL.MultiTexCoord3(0, 0, 0, 0); // main texture
        }
        else
        {
            GL.MultiTexCoord3(1, 0, 0, 0); // second texture
        }
        GL.Vertex3(0.25f, 0.25f, 0);
        if (flagTex)
        {
            GL.MultiTexCoord3(0, 0, 1, 0);
        }
        else
        {
            GL.MultiTexCoord3(1, 0, 1, 0);
        }
        GL.Vertex3(0.25f, 0.75f, 0);
        if (flagTex)
        {
            GL.MultiTexCoord3(0, 1, 1, 0);
        }
        else
        {
            GL.MultiTexCoord3(1, 1, 1, 0);
        }
        GL.Vertex3(0.75f, 0.75f, 0);
        if (flagTex)
        {
            GL.MultiTexCoord3(0, 1, 0, 0);
        }
        else
        {
            GL.MultiTexCoord3(1, 1, 0, 0);
        }
        GL.Vertex3(0.75f, 0.25f, 0);
        GL.End();
        GL.PopMatrix();
    }
}
```
