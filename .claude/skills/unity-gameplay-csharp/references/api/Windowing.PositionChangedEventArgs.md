<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windowing.PositionChangedEventArgs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Arguments for position changed event of a GameWindow.

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
        Debug.Log($"Main window moved to: {args.position.x}, {args.position.y}");
        Debug.Log($"Current display of main window: {args.displayInfo.name}");
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| displayInfo | The display containing the window after the move. |
| position | The position of the window relative to the top-left corner of the display. |
