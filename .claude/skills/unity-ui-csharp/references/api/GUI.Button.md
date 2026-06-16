<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUI.Button.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Rectangle on the screen to use for the button. |
| text | Text to display on the button. |
| image | Texture to display on the button. |
| content | Text, image and tooltip for this button. |
| style | The style to use. If left out, the `button` style from the current GUISkin is used. |

### Returns

**bool** `true` when the users clicks the button.

### Description

Make a single press button. The user clicks them and something happens immediately.

```csharp
// Draws 2 buttons, one with an image, and other with a text
// And print a message when they got clicked.using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public Texture btnTexture;    void OnGUI()
    {
        if (!btnTexture)
        {
            Debug.LogError("Please assign a texture on the inspector");
            return;
        }        if (GUI.Button(new Rect(10, 10, 50, 50), btnTexture))
            Debug.Log("Clicked the button with an image");        if (GUI.Button(new Rect(10, 70, 50, 30), "Click"))
            Debug.Log("Clicked the button with text");
    }
}
```
