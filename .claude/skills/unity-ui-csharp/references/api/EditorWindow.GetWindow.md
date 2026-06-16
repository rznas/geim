<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorWindow.GetWindow.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| windowType | The type of the window. Must derive from EditorWindow. |
| utility | Set this to true, to create a floating utility window, false to create a normal window. |
| title | If GetWindow creates a new window, it will get this title. If this value is null, use the class name as title. |
| focus | Whether to give the window focus, if it already exists. (If GetWindow creates a new window, it will always get focus). |

### Returns

**EditorWindow** An EditorWindow instance of `windowType`.

### Description

Returns the first EditorWindow of type `windowType` which is currently on the screen.

If there is none, creates and shows new window and returns the instance of it.


 *Simple Empty non-dockable window.*

```csharp
using UnityEngine;
using UnityEditor;

// Simple script that creates a new non-dockable window.
public class EditorWindowTest : EditorWindow
{
    [MenuItem("Examples/Display simple Window")]
    static void Initialize()
    {
        var window = (EditorWindowTest)EditorWindow.GetWindow(typeof(EditorWindowTest), true, "My Empty Window");
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| T | The type of the window. Must derive from EditorWindow. |
| utility | Set this to true, to create a floating utility window, false to create a normal window. |
| title | If GetWindow creates a new window, it will get this title. If this value is null, use the class name as title. |
| focus | Whether to give the window focus, if it already exists. (If GetWindow creates a new window, it will always get focus). |

### Returns

**T** An EditorWindow instance of type `T`.

### Description

Returns the first EditorWindow of type `T` which is currently on the screen.

If there is none, creates and shows new window and returns the instance of it.

### Parameters

| Parameter | Description |
| --- | --- |
| T | The type of the window. Must derive from EditorWindow. |
| title | If GetWindow creates a new window, it will get this title. If this value is null, use the class name as title. |
| desiredDockNextTo | An array of EditorWindow types that the window will attempt to dock onto. |
| focus | Whether to give the window focus, if it already exists. (If GetWindow creates a new window, it will always get focus). |

### Returns

**T** An EditorWindow instance of type `T`.

### Description

Returns the first EditorWindow of type `T` which is currently on the screen.

If there is none, creates and shows new window and returns the instance of it. The created window will attempt to be docked next to the first founds specified window type.
