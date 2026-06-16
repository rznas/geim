<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windowing.GameWindow.PositionChangedThisFrame.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** True if the position changed in the current frame, false otherwise.

### Description

Checks if the window's position changed during the current frame.

Use this in MonoBehaviour.Update, MonoBehaviour.FixedUpdate, or MonoBehaviour.LateUpdate to check if the window's position changed during the current frame.

```csharp
using UnityEngine;
using UnityEngine.Windowing;public class WindowingTest : MonoBehaviour
{
    GameWindow mainWindow;    private void Awake()
    {
        mainWindow = GameWindow.Main;
    }    private void Update()
    {
        if (mainWindow.PositionChangedThisFrame())
        {
            Debug.Log("Main window position changed: " + mainWindow.GetPosition());
        }
    }
}
```
