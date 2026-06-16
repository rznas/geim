<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windowing.GameWindow.UnregisterPositionChangedCallback.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| callback | The callback to remove. |

### Returns

**bool** True if the callback is successfully removed, false otherwise.

### Description

Unregisters a callback so it is no longer invoked when the window's position changes.

```csharp
using UnityEngine;
using UnityEngine.Windowing;public class WindowingTest : MonoBehaviour
{
    GameWindow mainWindow;    private void Awake()
    {
        mainWindow = GameWindow.Main;
    }    private void OnEnable()
    {
        // Register the callback
        mainWindow.RegisterPositionChangedCallback(WindowMovedCallback);
    }    private void OnDisable()
    {
        // Unregister the callback
        mainWindow.UnregisterPositionChangedCallback(WindowMovedCallback);
    }    private void WindowMovedCallback(GameWindow window, PositionChangedEventArgs args)
    {
        Debug.Log($"Main window moved to: {args.Position.x}, {args.Position.y}");
        Debug.Log($"Current display of main window: {args.DisplayInfo.name}");
    }
}
```
