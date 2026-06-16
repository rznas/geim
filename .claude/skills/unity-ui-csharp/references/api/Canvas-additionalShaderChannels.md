<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Canvas-additionalShaderChannels.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Get or set the mask of additional shader channels to be used when creating the Canvas mesh.

The Canvas will always include Position, Color, and Uv0 shader channels when generating the mesh for a overlay Canvas and will also include Normal and Tangent for ScreenSpace.Camera and World space Canvas. These are the optional additional parameters to be copied.

```csharp
using UnityEngine;public class SetCanvasShaderChannels : MonoBehaviour
{
    public Canvas canvas;    void Start()
    {
        canvas.additionalShaderChannels |= AdditionalCanvasShaderChannels.Normal;
        canvas.additionalShaderChannels |= AdditionalCanvasShaderChannels.TexCoord1;
        canvas.additionalShaderChannels |= AdditionalCanvasShaderChannels.Tangent;
    }
}
```
