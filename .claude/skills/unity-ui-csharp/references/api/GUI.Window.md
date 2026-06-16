<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUI.Window.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| Style | An optional style to use for the window. If left out, the `window` style from the current GUISkin is used. |
| id | ID number for the window (can be any value as long as it is unique). |
| clientRect | Onscreen rectangle denoting the window's position and size. |
| func | Script function to display the window's contents. |
| text | Text to render inside the window. |
| image | Image to render inside the window. |
| content | GUIContent to render inside the window. |
| style | Style information for the window. |
| title | Text displayed in the window's title bar. |

### Returns

**Rect** Onscreen rectangle denoting the window's position and size.

### Description

Make a popup window.

Windows float above normal GUI controls, feature click-to-focus and can optionally be dragged around by the end user. Unlike other controls, you need to pass them a separate function that renders the GUI controls inside the window.

**Note:** If you are using GUILayout to place your components inside the window, you should use GUILayout.Window. Also, if MonoBehaviour.useGUILayout is set to false then a call to GUI.Window will not have any effect, even though it is not a GUILayout function.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public Rect windowRect = new Rect(20, 20, 120, 50);    void OnGUI()
    {
        // Register the window. Notice the 3rd parameter
        windowRect = GUI.Window(0, windowRect, DoMyWindow, "My Window");
    }    // Make the contents of the window
    void DoMyWindow(int windowID)
    {
        if (GUI.Button(new Rect(10, 20, 100, 20), "Hello World"))
        {
            print("Got a click");
        }
    }
}
```

You can use the same function to create multiple windows. Just make sure that *each window has its own ID*. Example:

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public Rect windowRect0 = new Rect(20, 20, 120, 50);
    public Rect windowRect1 = new Rect(20, 100, 120, 50);    void OnGUI()
    {
        // Register the window. We create two windows that use the same function
        // Notice that their IDs differ
        windowRect0 = GUI.Window(0, windowRect0, DoMyWindow, "My Window");
        windowRect1 = GUI.Window(1, windowRect1, DoMyWindow, "My Window");
    }    // Make the contents of the window
    void DoMyWindow(int windowID)
    {
        if (GUI.Button(new Rect(10, 20, 100, 20), "Hello World"))
        {
            print("Got a click in window " + windowID);
        }        // Make the windows be draggable.
        GUI.DragWindow(new Rect(0, 0, 10000, 10000));
    }
}
```

To stop showing a window, simply stop calling GUI.Window from inside your main OnGUI function:

```csharp
// boolean variable to decide whether to show the window or not.
// Change this from the in-game GUI, scripting, the inspector or anywhere else to
// decide whether the window is visibleusing UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public bool doWindow0 = true;    // Make the contents of the window.
    void DoWindow0(int windowID)
    {
        GUI.Button(new Rect(10, 30, 80, 20), "Click Me!");
    }    void OnGUI()
    {
        // Make a toggle button for hiding and showing the window
        doWindow0 = GUI.Toggle(new Rect(10, 10, 100, 20), doWindow0, "Window 0");        // Make sure we only call GUI.Window if doWindow0 is true.
        if (doWindow0)
        {
            GUI.Window(0, new Rect(110, 10, 200, 60), DoWindow0, "Basic Window");
        }
    }
}
```

To make a window that gets its size from automatic GUI layouting, use GUILayout.Window. **Call Ordering** Windows need to be drawn back-to-front; windows on top of other windows need to be drawn later than the ones below them. This means that you can not count on your DoWindow functions to be called in any particular order. In order for this to work seamlessly, the following values are stored when you create your window (using the **Window** function), and retrieved when your DoWindow gets called: GUI.skin, GUI.enabled, GUI.color, GUI.backgroundColor, GUI.contentColor, GUI.matrix.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public Rect windowRect0 = new Rect(20, 20, 120, 50);
    public Rect windowRect1 = new Rect(20, 100, 120, 50);    void OnGUI()
    {
        // Here we make 2 windows. We set the GUI.color value to something before each.
        GUI.color = Color.red;
        windowRect0 = GUI.Window(0, windowRect0, DoMyWindow, "Red Window");        GUI.color = Color.green;
        windowRect1 = GUI.Window(1, windowRect1, DoMyWindow, "Green Window");
    }    // Make the contents of the window.
    // The value of GUI.color is set to what it was when the window
    // was created in the code above.
    void DoMyWindow(int windowID)
    {
        if (GUI.Button(new Rect(10, 20, 100, 20), "Hello World"))
        {
            print("Got a click in window with color " + GUI.color);
        }        // Make the windows be draggable.
        GUI.DragWindow(new Rect(0, 0, 10000, 10000));
    }
}
```

Note that you can use the alpha component of GUI.color to fade windows in and out.

Additional resources: DragWindow, BringWindowToFront, BringWindowToBack.
