<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.OnPostRender.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Event function that Unity calls after a Camera renders the scene.

In the Built-in Render Pipeline, Unity calls `OnPostRender` on MonoBehaviours that are attached to the same GameObject as an enabled Camera component, just after that Camera renders the scene. Use `OnPostRender` to execute your own code at this point in the render loop; for example, if you changed a visual effect in MonoBehaviour.OnPreRender, you can change it back here. `OnPostRender` can be a coroutine.

For similar functionality that does not require the script to be on the same GameObject as a Camera component, see Camera.onPostRender.

**Note**: `OnPostRender` depends on the Built-in Render Pipeline and won't be called in projects using the Scriptable or Universal Render Pieplines. For similar functionality in the Scriptable Render Pipeline, refer to RenderPipelineManager.

To execute code after Unity renders all Cameras and GUI, use WaitForEndOfFrame or a CommandBuffer.

```csharp
using UnityEngine;// A script that when attached to the camera, makes the resulting
// colors inverted. See its effect in play mode.
public class ExampleClass : MonoBehaviour
{
    private Material mat;    // Will be called from camera after regular rendering is done.
    public void OnPostRender()
    {
        if (!mat)
        {
            // Unity has a built-in shader that is useful for drawing
            // simple colored things. In this case, we just want to use
            // a blend mode that inverts destination colors.
            var shader = Shader.Find("Hidden/Internal-Colored");
            mat = new Material(shader);
            mat.hideFlags = HideFlags.HideAndDontSave;
            // Set blend mode to invert destination colors.
            mat.SetInt("_SrcBlend", (int)UnityEngine.Rendering.BlendMode.OneMinusDstColor);
            mat.SetInt("_DstBlend", (int)UnityEngine.Rendering.BlendMode.Zero);
            // Turn off backface culling, depth writes, depth test.
            mat.SetInt("_Cull", (int)UnityEngine.Rendering.CullMode.Off);
            mat.SetInt("_ZWrite", 0);
            mat.SetInt("_ZTest", (int)UnityEngine.Rendering.CompareFunction.Always);
        }        GL.PushMatrix();
        GL.LoadOrtho();        // activate the first shader pass (in this case we know it is the only pass)
        mat.SetPass(0);
        // draw a quad over whole screen
        GL.Begin(GL.QUADS);
        GL.Vertex3(0, 0, 0);
        GL.Vertex3(1, 0, 0);
        GL.Vertex3(1, 1, 0);
        GL.Vertex3(0, 1, 0);
        GL.End();        GL.PopMatrix();
    }
}
```

Additional resources: Camera.onPostRender, MonoBehaviour.OnPreRender, MonoBehaviour.OnPreCull, CommandBuffer, Extending the Built-in Render Pipeline using CommandBuffers, WaitForEndOfFrame.
