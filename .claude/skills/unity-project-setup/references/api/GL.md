<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GL.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Low-level graphics library.

Use this class to manipulate active transformation matrices, issue rendering commands similar to OpenGL's immediate mode and do other low-level graphics tasks. Note that in almost all cases using Graphics.RenderMesh or CommandBuffer is more efficient than using immediate mode drawing.

GL immediate drawing functions use whatever is the "current material" set up right now (see Material.SetPass). The material controls how the rendering is done (blending, textures, etc.), so unless you explicitly set it to something before using GL draw functions, the material can happen to be anything. Also, if you call any other drawing commands from inside GL drawing code, they can set material to something else, so make sure it's under control as well.

GL drawing commands execute immediately. That means if you call them in Update(), they will be executed before the camera is rendered (and the camera will most likely clear the screen, making the GL drawing not visible).

The usual place to call GL drawing is most often in Camera.OnPostRender() from a script attached to a camera, or inside an image effect function (Camera.OnRenderImage).

**Note:** The High Definition Render Pipeline (HDRP) and the Universal Render Pipeline (URP) do not support Camera.OnPostRender. Instead, use RenderPipelineManager.endCameraRendering or RenderPipelineManager.endFrameRendering.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    // When added to an object, draws colored rays from the
    // transform position.
    public int lineCount = 100;
    public float radius = 3.0f;    static Material lineMaterial;
    static void CreateLineMaterial()
    {
        if (!lineMaterial)
        {
            // Unity has a built-in shader that is useful for drawing
            // simple colored things.
            Shader shader = Shader.Find("Hidden/Internal-Colored");
            lineMaterial = new Material(shader);
            lineMaterial.hideFlags = HideFlags.HideAndDontSave;
            // Turn on alpha blending
            lineMaterial.SetInt("_SrcBlend", (int)UnityEngine.Rendering.BlendMode.SrcAlpha);
            lineMaterial.SetInt("_DstBlend", (int)UnityEngine.Rendering.BlendMode.OneMinusSrcAlpha);
            // Turn backface culling off
            lineMaterial.SetInt("_Cull", (int)UnityEngine.Rendering.CullMode.Off);
            // Turn off depth writes
            lineMaterial.SetInt("_ZWrite", 0);
        }
    }    // Will be called after all regular rendering is done
    public void OnRenderObject()
    {
        CreateLineMaterial();
        // Apply the line material
        lineMaterial.SetPass(0);        GL.PushMatrix();
        // Set transformation matrix for drawing to
        // match our transform
        GL.MultMatrix(transform.localToWorldMatrix);        // Draw lines
        GL.Begin(GL.LINES);
        for (int i = 0; i < lineCount; ++i)
        {
            float a = i / (float)lineCount;
            float angle = a * Mathf.PI * 2;
            // Vertex colors change from red to green
            GL.Color(new Color(a, 1 - a, 0, 0.8F));
            // One vertex at transform position
            GL.Vertex3(0, 0, 0);
            // Another vertex at edge of circle
            GL.Vertex3(Mathf.Cos(angle) * radius, Mathf.Sin(angle) * radius, 0);
        }
        GL.End();
        GL.PopMatrix();
    }
}
```

**Note:** This class is almost always used when you need to draw a couple of lines or triangles, and don't want to deal with meshes. If you want to avoid surprises the usage pattern is this:

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void OnPostRender()
    {
        // Set your materials
        GL.PushMatrix();
        // yourMaterial.SetPass( );
        // Draw your stuff
        GL.PopMatrix();
    }
}
```

Where at the "// Draw your stuff" you should do SetPass() on some material previously declared, which will be used for drawing. If you dont call SetPass, then you'll get basically a random material (whatever was used before) which is not good. So do it.

### Static Properties

| Property | Description |
| --- | --- |
| invertCulling | Select whether to invert the backface culling (true) or not (false). |
| LINE_STRIP | Mode for Begin: draw line strip. |
| LINES | Mode for Begin: draw lines. |
| modelview | Gets or sets the modelview matrix. |
| QUADS | Mode for Begin: draw quads. |
| sRGBWrite | Controls whether Linear-to-sRGB color conversion is performed while rendering. |
| TRIANGLE_STRIP | Mode for Begin: draw triangle strip. |
| TRIANGLES | Mode for Begin: draw triangles. |
| wireframe | Should rendering be done in wireframe? |

### Static Methods

| Method | Description |
| --- | --- |
| Begin | Begin drawing 3D primitives. |
| Clear | Clear the current render buffer. |
| ClearWithSkybox | Clear the current render buffer with camera's skybox. |
| Color | Sets current vertex color. |
| End | End drawing 3D primitives. |
| Flush | Sends queued-up commands in the driver's command buffer to the GPU. |
| GetGPUProjectionMatrix | Compute GPU projection matrix from camera's projection matrix. |
| InvalidateState | Invalidate the internally cached render state. |
| IssuePluginEvent | Send a user-defined event to a native code plugin. |
| LoadIdentity | Load an identity into the current model and view matrices. |
| LoadOrtho | Helper function to set up an orthograhic projection. |
| LoadPixelMatrix | Setup a matrix for pixel-correct rendering. |
| LoadProjectionMatrix | Load an arbitrary matrix to the current projection matrix. |
| MultiTexCoord | Sets current texture coordinate (v.x,v.y,v.z) to the actual texture unit. |
| MultiTexCoord2 | Sets current texture coordinate (x,y) for the actual texture unit. |
| MultiTexCoord3 | Sets current texture coordinate (x,y,z) to the actual texture unit. |
| MultMatrix | Sets the current model matrix to the one specified. |
| PopMatrix | Restores the model, view and projection matrices off the top of the matrix stack. |
| PushMatrix | Saves the model, view and projection matrices to the top of the matrix stack. |
| RenderTargetBarrier | Resolves the render target for subsequent operations sampling from it. |
| TexCoord | Sets current texture coordinate (v.x,v.y,v.z) for all texture units. |
| TexCoord2 | Sets current texture coordinate (x,y) for all texture units. |
| TexCoord3 | Sets current texture coordinate (x,y,z) for all texture units. |
| Vertex | Submit a vertex. |
| Vertex3 | Submit a vertex. |
| Viewport | Set the rendering viewport. |
