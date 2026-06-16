<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera.RenderWithShader.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| shader | The shader to render visible objects with. |
| replacementTag | The ShaderLab Tag used to filter which objects are rendered. |

### Description

Render the camera with shader replacement.

See Rendering with Replaced Shaders page for details.

This will render the camera. It will use the camera's clear flags, target texture and all other settings.

If the replacementTag argument is not in use, pass an empty string as the value.

The camera will **not** send MonoBehaviour.OnPreCull, MonoBehaviour.OnPreRender or MonoBehaviour.OnPostRender to attached scripts. Image filters will not be rendered either.

This is used for special effects, e.g. rendering screen space normal buffer of the whole Scene, heat vision and so on. To make use of this feature, usually you create a camera and disable it. Then call RenderWithShader on it.

You are not able to call the Render function from a camera that is currently rendering. If you wish to do this create a copy of the camera, and make it match the original one using CopyFrom.

The following example shows how to render the current camera with a replacement shader and store the result in a render texture.

Additional resources: Rendering with Replaced Shaders, SetReplacementShader, Render.

```csharp
using UnityEngine;
using UnityEngine;public class ReplaceShader : MonoBehaviour
{
    public Shader overrideShader;
    public RenderTexture output;
    void Update()
    {
        // Check if there is a current camera rendering
        if (Camera.current != null)
        {
            // Assign the output render texture to the current camera
            Camera.current.targetTexture = output;
            // 
            // Render the scene by replacing all the "RenderType" shaders with the overrideShader
            Camera.current.RenderWithShader(overrideShader, "RenderType");
            // 
            // Set the output render texture back to null to avoid side effects.
            Camera.current.targetTexture = null;
        }
        else
        {
            Debug.LogWarning("No current camera available for rendering.");
        }
    }
}
```
