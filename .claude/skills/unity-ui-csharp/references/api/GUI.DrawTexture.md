<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUI.DrawTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Rectangle on the screen to draw the texture within. |
| image | Texture to display. |
| scaleMode | How to scale the image when the aspect ratio of it doesn't fit the aspect ratio to be drawn within. |
| alphaBlend | Whether to apply alpha blending when drawing the image (enabled by default). |
| imageAspect | Aspect ratio to use for the source image. If 0 (the default), the aspect ratio from the image is used. Pass in w/h for the desired aspect ratio. This allows the aspect ratio of the source image to be adjusted without changing the pixel width and height. |

### Description

Draw a texture within a rectangle.

Additional resources: GUI.color, GUI.contentColor.

```csharp
// Draws a texture in the left corner of the screen.
// The texture is drawn in a window 60x60 pixels.
// The source texture is given an aspect ratio of 10x1
// and scaled to fit in the 60x60 rectangle.  Because
// the aspect ratio is preserved, the texture will fit
// inside a 60x10 pixel area of the screen rectangle.using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public Texture aTexture;    void OnGUI()
    {
        if (!aTexture)
        {
            Debug.LogError("Assign a Texture in the inspector.");
            return;
        }        GUI.DrawTexture(new Rect(10, 10, 60, 60), aTexture, ScaleMode.ScaleToFit, true, 10.0F);
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| position | Rectangle on the screen to draw the texture within. |
| image | Texture to display. |
| scaleMode | How to scale the image when the aspect ratio of it doesn't fit the aspect ratio to be drawn within. |
| alphaBlend | Whether to apply alpha blending when drawing the image (enabled by default). |
| imageAspect | Aspect ratio to use for the source image. If 0 (the default), the aspect ratio from the image is used. Pass in w/h for the desired aspect ratio. This allows the aspect ratio of the source image to be adjusted without changing the pixel width and height. |
| color | A tint color to apply on the texture. |
| borderWidth | The width of the border. If 0, the full texture is drawn. |
| borderWidths | The width of the borders (left, top, right and bottom). If Vector4.zero, the full texture is drawn. |
| borderRadius | The radius for rounded corners. If 0, corners will not be rounded. |
| borderRadiuses | The radiuses for rounded corners (top-left, top-right, bottom-right and bottom-left). If Vector4.zero, corners will not be rounded. |

### Description

Draws a border with rounded corners within a rectangle. The texture is used to pattern the border. Note that this method only works on shader model 2.5 and above.
