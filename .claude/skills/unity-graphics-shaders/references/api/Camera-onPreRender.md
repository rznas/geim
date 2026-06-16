<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera-onPreRender.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Delegate that you can use to execute custom code before a Camera renders the scene.

In the Built-in Render Pipeline, Unity calls this `onPreRender` before any Camera begins rendering. To execute custom code at this point, create callbacks that match the signature of CameraCallback, and add them to this delegate.

For similar functionality that applies only to a single Camera and requires your script to be on the same GameObject, see MonoBehaviour.OnPreRender.

If you're using a Scriptable Render Pipeline, for example the Universal Render Pipeline, use RenderPipelineManager instead.

Unity calls `onPreRender` after the Camera performs its culling operation. This means that if you make a change that affects what the Camera sees, the change will take effect from the next frame. To make a change to what the Camera sees in the current frame, use Camera.onPreCull.

When Unity calls `onPreRender`, the Camera's render target and depth textures are not yet set up. If you need to access these, you can execute code later in the render loop using a CommandBuffer.

```csharp
using UnityEngine;public class CameraCallbackExample : MonoBehaviour
{
    // Add your callback to the delegate's invocation list
    void Start()
    {
        Camera.onPreRender += OnPreRenderCallback;
    }    // Unity calls the methods in this delegate's invocation list before rendering any camera
    void OnPreRenderCallback(Camera cam)
    {
        Debug.Log("Camera callback: Camera name is " + cam.name);        // Unity calls this for every active Camera.
        // If you're only interested in a particular Camera,
        // check whether the Camera is the one you're interested in
        if (cam == Camera.main)
        {
            // Put your custom code here
        }
    }    // Remove your callback from the delegate's invocation list
    void OnDestroy()
    {
        Camera.onPreRender -= OnPreRenderCallback;
    }
}
```

Additional resources: CameraCallback, Camera.onPreCull, Camera.onPostRender, MonoBehaviour.OnPreRender, CommandBuffer, Extending the Built-in Render Pipeline using CommandBuffers.
