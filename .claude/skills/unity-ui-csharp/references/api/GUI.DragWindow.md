<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUI.DragWindow.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | The part of the window that can be dragged. This is clipped to the actual window. |

### Description

Make a window draggable.

Insert a call to this function inside your window code to make a window draggable.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public Rect windowRect = new Rect(20, 20, 120, 50);    void OnGUI()
    {
        // Register the window.
        windowRect = GUI.Window(0, windowRect, DoMyWindow, "My Window");
    }    // Make the contents of the window
    void DoMyWindow(int windowID)
    {
        // Make a very long rect that is 20 pixels tall.
        // This will make the window be resizable by the top
        // title bar - no matter how wide it gets.
        GUI.DragWindow(new Rect(0, 0, 10000, 20));
    }
}
```

### Description

If you want to have the entire window background to act as a drag area, use the version of DragWindow that takes no parameters and put it at the end of the window function.

This will mean that any other controls will get precedence and the dragging will only be activated if nothing else has mouse focus. Additional resources: DragWindow, BringWindowToFront, BringWindowToBack.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    public Rect windowRect = new Rect(20, 20, 120, 50);    void OnGUI()
    {
        windowRect = GUI.Window(0, windowRect, DoMyWindow, "My Window");
    }    // Make the contents of the window
    void DoMyWindow(int windowID)
    {
        GUI.Button(new Rect(10, 20, 100, 20), "Can't drag me");
        // Insert a huge dragging area at the end.
        // This gets clipped to the window (like all other controls) so you can never
        //  drag the window from outside it.
        GUI.DragWindow(new Rect(0, 0, 10000, 20));
    }
}
```
