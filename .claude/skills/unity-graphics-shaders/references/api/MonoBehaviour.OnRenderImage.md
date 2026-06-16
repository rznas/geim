<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.OnRenderImage.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| source | A RenderTexture containing the source image. |
| destination | The RenderTexture to update with the modified image. |

### Description

Event function that Unity calls after a Camera has finished rendering, that allows you to modify the Camera's final image.

In the Built-in Render Pipeline, Unity calls `OnRenderImage` on MonoBehaviours that are attached to the same GameObject as an enabled Camera component, after the Camera finished rendering. You can use `OnRenderImage` to create a fullscreen post-processing effect. These effects work by reading the pixels from the source image, using a Unity shader to modify the appearance of the pixels, and then rendering the result into the destination image. You would typically use Graphics.Blit to perform these steps.

If multiple scripts on the same Camera implement `OnRenderImage`, Unity calls them in the order that they appear in the Camera Inspector window, starting from the top. The `destination` of one operation is the `source` of the next one; internally, Unity creates one or more temporary RenderTextures to store these intermediate results.

On Android, to avoid banding or to use alpha in fullscreen effects, set PlayerSettings.use32BitDisplayBuffer to `true`.

`OnRenderImage` is not supported in the Scriptable Render Pipeline. To create custom fullscreen effects in the Universal Render Pipeline (URP), use the ScriptableRenderPass API. To create custom fullscreen effects in the High Definition Render Pipeline (HDRP), use a Fullscreen Custom Pass.

For information about using Unity's pre-built post-processing effects, see Post-processing.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    // A Material with the Unity shader you want to process the image with
    public Material mat;    void OnRenderImage(RenderTexture src, RenderTexture dest)
    {
        // Read pixels from the source RenderTexture, apply the material, copy the updated results to the destination RenderTexture
        Graphics.Blit(src, dest, mat);
    }
}
```
