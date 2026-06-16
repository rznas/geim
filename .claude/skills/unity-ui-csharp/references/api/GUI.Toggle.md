<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUI.Toggle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Rectangle on the screen to use for the button. |
| value | Is this button on or off? |
| text | Text to display on the button. |
| image | Texture to display on the button. |
| content | Text, image and tooltip for this button. |
| style | The style to use. If left out, the `toggle` style from the current GUISkin is used. |

### Returns

**bool** The new value of the button.

### Description

Make an on/off toggle button.

```csharp
// Draws 2 toggle controls, one with a text, the other with an image.using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public Texture aTexture;    private bool toggleTxt = false;
    private bool toggleImg = false;    void OnGUI()
    {
        if (!aTexture)
        {
            Debug.LogError("Please assign a texture in the inspector.");
            return;
        }        toggleTxt = GUI.Toggle(new Rect(10, 10, 100, 30), toggleTxt, "A Toggle text");
        toggleImg = GUI.Toggle(new Rect(10, 50, 50, 50), toggleImg, aTexture);
    }
}
```
