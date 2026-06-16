<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera-onPostRender.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Delegate that you can use to execute custom code after a Camera renders the scene.

In the Built-in Render Pipeline, Unity calls `onPostRender` after any Camera finishes rendering. To execute custom code at this point, create callbacks that match the signature of CameraCallback, and add them to this delegate.

For similar functionality that applies only to a single Camera and requires your script to be on the same GameObject, see MonoBehaviour.OnPostRender.

If you're using a Scriptable Render Pipeline, for example the Universal Render Pipeline, use RenderPipelineManager instead.

To execute code after Unity renders all Cameras and GUI, use WaitForEndOfFrame or a CommandBuffer.

```csharp
using UnityEngine;public class CameraCallbackExample : MonoBehaviour
{
    // Add your callback to the delegate's invocation list
    void Start()
    {
        Camera.onPostRender += OnPostRenderCallback;
    }    // Unity calls the methods in this delegate's invocation list before rendering any camera
    void OnPostRenderCallback(Camera cam)
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
        Camera.onPostRender -= OnPostRenderCallback;
    }
}
```

Additional resources: CameraCallback, Camera.onPreRender, Camera.onPreCull, MonoBehaviour.OnPostRender, CommandBuffer, Extending the Built-in Render Pipeline using CommandBuffers, WaitForEndOfFrame.
