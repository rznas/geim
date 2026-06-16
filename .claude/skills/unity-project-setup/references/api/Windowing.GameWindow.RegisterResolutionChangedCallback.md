<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windowing.GameWindow.RegisterResolutionChangedCallback.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| callback | The callback to invoke when the resolution changes with GameWindow and ResolutionChangedEventArgs as parameters. |

### Description

Registers a callback that is invoked when the window's resolution changes.

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
        mainWindow.RegisterResolutionChangedCallback(WindowResizeCallback);
    }    private void OnDisable()
    {
        // Unregister the callback
        mainWindow.UnregisterResolutionChangedCallback(WindowResizeCallback);
    }    private void WindowResizeCallback(GameWindow window, ResolutionChangedEventArgs args)
    {
        Debug.Log($"Main window resized to: {args.Width}x{args.Height} : {args.RefreshRate.value}Hz");
        switch (args.FullScreenMode)
        {
            case FullScreenMode.FullScreenWindow:
                Debug.Log("Main window is fullscreen.");
                break;
            case FullScreenMode.Windowed:
                Debug.Log("Main window is windowed.");
                break;
        }
    }
}
```
