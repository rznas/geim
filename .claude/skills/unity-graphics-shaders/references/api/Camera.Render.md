<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera.Render.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Render the camera manually.

This will render the camera. It will use the camera's clear flags, target texture and all other settings.

The camera will send MonoBehaviour.OnPreCull, MonoBehaviour.OnPreRender and MonoBehaviour.OnPostRender to any scripts attached, and render any eventual image filters.

This is used for taking precise control of render order. To make use of this feature, create a camera and disable it. Then call Render on it.

You are not able to call the Render function from a camera that is currently rendering. If you wish to do this create a copy of the camera, and make it match the original one using CopyFrom.

Additional resources: RenderWithShader.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Take a "screenshot" of a camera's Render Texture.
    Texture2D RTImage(Camera camera)
    {
        // The Render Texture in RenderTexture.active is the one
        // that will be read by ReadPixels.
        var currentRT = RenderTexture.active;
        RenderTexture.active = camera.targetTexture;        // Render the camera's view.
        camera.Render();        // Make a new texture and read the active Render Texture into it.
        Texture2D image = new Texture2D(camera.targetTexture.width, camera.targetTexture.height);
        image.ReadPixels(new Rect(0, 0, camera.targetTexture.width, camera.targetTexture.height), 0, 0);
        image.Apply();        // Replace the original active Render Texture.
        RenderTexture.active = currentRT;
        return image;
    }
}
```
