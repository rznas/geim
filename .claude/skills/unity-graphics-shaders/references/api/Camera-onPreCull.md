<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera-onPreCull.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Delegate that you can use to execute custom code before a Camera culls the scene.

In the Built-in Render Pipeline, Unity calls `onPreCull` before performing the culling operation that determines what a Camera can see. To execute custom code at this point, create callbacks that match the signature of CameraCallback, and add them to this delegate. For example, you could change a Camera's settings to affect what the Camera sees.

For similar functionality that applies only to a single Camera and requires your script to be on the same GameObject, see MonoBehaviour.OnPreCull.

If you're using a Scriptable Render Pipeline, for example the Universal Render Pipeline, use RenderPipelineManager instead.

```csharp
using UnityEngine;public class CameraCallbackExample : MonoBehaviour
{
    // Add your callback to the delegate's invocation list
    void Start()
    {
        Camera.onPreCull += OnPreCullCallback;
    }    // Unity calls the methods in this delegate's invocation list before rendering any camera
    void OnPreCullCallback(Camera cam)
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
        Camera.onPreCull -= OnPreCullCallback;
    }
}
```

Additional resources: CameraCallback, Camera.onPreRender, Camera.onPostRender, MonoBehaviour.OnPreCull, CommandBuffer, Extending the Built-in Render Pipeline using CommandBuffers.
