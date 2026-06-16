<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Touch-position.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The position of the touch in screen space pixel coordinates.

Position returns the current position of a touch contact as it's dragged. If you need the original position of the touch see Touch.rawPosition.

The bottom-left of the screen or window is at (0, 0). The top-right of the screen or window is at (Screen.width, Screen.height).

```csharp
// This script outputs the position of an active touch contact// Attach this script to a GameObject
// Create a Text GameObject (GameObject>UI>Text)
// Attach the Text to the Text field in the Inspector window of your GameObjectusing UnityEngine;
using UnityEngine.UI;public class TouchPositionExample : MonoBehaviour
{
    public Text m_Text;    void Update()
    {
        if (Input.touchCount > 0)
        {
            Touch touch = Input.GetTouch(0);            // Update the Text on the screen depending on current position of the touch each frame
            m_Text.text = "Touch Position : " + touch.position;
        }
        else
        {
            m_Text.text = "No touch contacts";
        }
    }
}
```
