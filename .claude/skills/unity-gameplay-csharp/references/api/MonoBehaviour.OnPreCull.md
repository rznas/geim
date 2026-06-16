<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.OnPreCull.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Event function that Unity calls before a Camera culls the scene.

In the Built-in Render Pipeline, Unity calls `OnPreCull` on MonoBehaviours that are attached to the same GameObject as an enabled Camera component, just before that Camera performs the culling operation that determines what it can see. Use `OnPreCull` to execute your own code at this point in the render loop; for example, you can change the Camera's settings before performing the culling operation, to affect what the Camera sees. `OnPreCull` can be a coroutine.

For similar functionality that does not require the script to be on the same GameObject as a Camera component, refer to Camera.onPreCull.

**Note**: `OnPreCull` depends on the Built-in Render Pipeline and won't be called in projects using the Scriptable or Universal Render Pieplines. For similar functionality in the Scriptable Render Pipeline, refer to RenderPipelineManager.

```csharp
// Attach this to the same GameObject as a Camera component.
// This script inverts the view of the Camera, so that everything rendered by it is flippedusing UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    Camera cam;    void Start()
    {
        cam = GetComponent<Camera>();
    }    void OnPreCull()
    {
        cam.ResetWorldToCameraMatrix();
        cam.ResetProjectionMatrix();
        cam.projectionMatrix = cam.projectionMatrix * Matrix4x4.Scale(new Vector3(1, -1, 1));
    }    void OnPreRender()
    {
        GL.invertCulling = true;
    }    void OnPostRender()
    {
        GL.invertCulling = false;
    }
}
```

Additional resources: Camera.onPreCull, MonoBehaviour.OnPreRender, MonoBehaviour.OnPostRender, CommandBuffer, Extending the Built-in Render Pipeline using CommandBuffers.
