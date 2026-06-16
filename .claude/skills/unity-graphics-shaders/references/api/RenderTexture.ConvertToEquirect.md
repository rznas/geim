<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderTexture.ConvertToEquirect.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| equirect | RenderTexture to render the equirect format to. |
| eye | A Camera eye corresponding to the left or right eye for stereoscopic rendering, or neither for monoscopic rendering. |

### Description

Converts the render texture to equirectangular format (both stereoscopic or monoscopic equirect). The left eye will occupy the top half and the right eye will occupy the bottom. The monoscopic version will occupy the whole texture. Texture dimension must be of type TextureDimension.Cube.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class CreateEquirect : MonoBehaviour
{
    public RenderTexture cubemap;
    public RenderTexture cubemap2;
    public RenderTexture equirect;
    public bool renderStereo = true;
    public float stereoSeparation = 0.064f;    void LateUpdate()
    {
        //assume cubemap and cubemap2 are rendered using Camera.RenderToCubemap() for left/right eyes        if (equirect == null)
            return;        if (renderStereo)
        {
            cubemap.ConvertToEquirect(equirect, Camera.MonoOrStereoscopicEye.Left);
            cubemap2.ConvertToEquirect(equirect, Camera.MonoOrStereoscopicEye.Right);
        }
        else
        {
            cubemap.ConvertToEquirect(equirect, Camera.MonoOrStereoscopicEye.Mono);
        }
    }
}
```
