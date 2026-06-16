<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windowing.ResolutionChangedEventArgs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Arguments for resolution changed event of a GameWindow.

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
        Debug.Log($"Main window resized to: {args.width}x{args.height} : {args.refreshRate.value}Hz");
        switch (args.fullScreenMode)
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

### Properties

| Property | Description |
| --- | --- |
| fullScreenMode | The fullscreen mode of the window after the resolution change. |
| height | The new height of the window. |
| refreshRate | The new refresh rate of the window. |
| width | The new width of the window. |
