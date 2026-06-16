<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Input-touches.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns list of objects representing status of all touches during last frame. (Read Only) (Allocates temporary variables).

**Note**: This API is part of the legacy Input Manager. The recommended best practice is that you don't use this API in new projects. For new projects, use the Input System package. To learn more about input, refer to Input.

Each entry represents a status of a finger touching the screen.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Prints number of fingers touching the screen
    void Update()
    {
        var fingerCount = 0;
        foreach (Touch touch in Input.touches)
        {
            if (touch.phase != TouchPhase.Ended && touch.phase != TouchPhase.Canceled)
            {
                fingerCount++;
            }
        }
        if (fingerCount > 0)
        {
            print("User has " + fingerCount + " finger(s) touching the screen");
        }
    }
}
```
