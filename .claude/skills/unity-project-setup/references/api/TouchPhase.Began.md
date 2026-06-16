<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TouchPhase.Began.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A finger touched the screen.

```csharp
//Attach this script to an empty GameObject
//Create some UI Text by going to Create>UI>Text.
//Drag this GameObject into the Text field of your GameObject’s Inspector window.using UnityEngine;
using System.Collections;
using UnityEngine.UI;public class TouchPhaseExample : MonoBehaviour
{
    public Vector2 startPos;
    public Vector2 direction;    public Text m_Text;
    string message;    void Update()
    {
        //Update the Text on the screen depending on current TouchPhase, and the current direction vector
        m_Text.text = "Touch : " + message + "in direction" + direction;        // Track a single touch as a direction control.
        if (Input.touchCount > 0)
        {
            Touch touch = Input.GetTouch(0);            // Handle finger movements based on TouchPhase
            switch (touch.phase)
            {
                //When a touch has first been detected, change the message and record the starting position
                case TouchPhase.Began:
                    // Record initial touch position.
                    startPos = touch.position;
                    message = "Begun ";
                    break;                //Determine if the touch is a moving touch
                case TouchPhase.Moved:
                    // Determine direction by comparing the current touch position with the initial one
                    direction = touch.position - startPos;
                    message = "Moving ";
                    break;                case TouchPhase.Ended:
                    // Report that the touch has ended when it ends
                    message = "Ending ";
                    break;
            }
        }
    }
}
```
