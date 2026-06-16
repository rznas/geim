<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUI.RepeatButton.html
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

**bool** True when the users clicks the button.

### Description

Make a button that is active as long as the user holds it down.

```csharp
// Draws 2 buttons, one with an image, and other with a text
// Prints a message when they get clicked.// Prints a message when they get clicked.using UnityEngine;
using System.Collections;public class Example : MonoBehaviour
{
    public Texture btnTexture;    void OnGUI()
    {
        if (!btnTexture)
        {
            Debug.LogError("Please assign a texture on the inspector");
            return;
        }        if (GUI.RepeatButton(new Rect(10, 10, 50, 50), btnTexture))
            Debug.Log("Clicked the button with an image");        if (GUI.RepeatButton(new Rect(10, 70, 50, 30), "Click"))
            Debug.Log("Clicked the button with text");
    }
}
```
