<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windowing.GameWindow.DisposeAsync.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**ValueTask** A ValueTask that represents the asynchronous dispose operation.

### Description

Asynchronously disposes of the window and releases its resources.

Use this method to dispose of a secondary window when you no longer need it. You cannot dispose of the main window. To close the main window, use Application.Quit instead. The `DisposeAsync` method clears all registered position and resolution change callbacks before it disposes of the window. After disposal, this GameWindow instance is no longer valid and you must not use it. The following code example demonstrates how to use this method to dispose of a secondary window.

```csharp
using UnityEngine;
using UnityEngine.Windowing;public class DisposeWindowExample : MonoBehaviour
{
    GameWindow secondaryWindow;    void Start()
    {
        var settings = new GameWindowCreationSettings(
            title: "Secondary Window",
            width: 800,
            height: 600,
            position: new Vector2Int(0, 0),
            cameraDisplayIndex: 1,
            displayInfo: GameWindow.Main.GetDisplayInfo(),
            fullScreenMode: FullScreenMode.Windowed,
            resizable: false
        );        var op = GameWindowManager.Create(settings);
        op.completed += (AsyncOperation o) =>
        {
            secondaryWindow = ((CreateWindowAsyncOperation)o).window;
        };
    }    async void DestroySecondaryWindow()
    {
        await secondaryWindow.DisposeAsync();
        Debug.Log("Secondary window disposed.");
    }
}
```
