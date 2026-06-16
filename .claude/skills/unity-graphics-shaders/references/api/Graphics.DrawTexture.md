<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Graphics.DrawTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| screenRect | Rectangle on the screen to use for the texture. In pixel coordinates with (0,0) in the upper-left corner. |
| texture | Texture to draw. |
| sourceRect | Region of the texture to use. In normalized coordinates with (0,0) in the bottom-left corner. |
| leftBorder | Number of pixels from the left that are not affected by scale. |
| rightBorder | Number of pixels from the right that are not affected by scale. |
| topBorder | Number of pixels from the top that are not affected by scale. |
| bottomBorder | Number of pixels from the bottom that are not affected by scale. |
| color | Color that modulates the output. The neutral value is (0.5, 0.5, 0.5, 0.5). Set as vertex color for the shader. |
| mat | Custom Material that can be used to draw the texture. Unity passes the texture into the shader as `_MainTex`. If null is passed, a default material with the Internal-GUITexture.shader is used. |
| pass | If -1 (default), draws all passes in the material. Otherwise, draws given pass only. |

### Description

Draw a texture in screen coordinates.

If you want to draw a texture from inside of OnGUI code, you should only do that from EventType.Repaint events. It's probably better to use GUI.DrawTexture for GUI code.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Draws a texture on the screen at 10, 10 with 100 width, 100 height.    Texture aTexture;    void OnGUI()
    {
        if (Event.current.type.Equals(EventType.Repaint))
        {
            Graphics.DrawTexture(new Rect(10, 10, 100, 100), aTexture);
        }
    }
}
```
