<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material.SetPass.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| pass | Shader pass number to setup. |

### Returns

**bool** If false is returned, no rendering should be done.

### Description

Activate the given `pass` for rendering.

Pass indices start from zero and go up to (but not including) passCount.

This is mostly used in direct drawing code. For example, drawing 3D primitives with GL.Begin, GL.End, and also drawing meshes using Graphics.DrawMeshNow.

If SetPass returns false, you should not render anything. This is typically the case for special pass types that aren't meant for rendering, like GrabPass.

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
            Shader shader = Shader.Find("Hidden/Internal-Colored");
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

Additional resources: passCount property, GL class, ShaderLab documentation.
