<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorWindow.GetWindowWithRect.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| windowType | The type of the window. Must derive from EditorWindow. |
| rect | The position on the screen where a newly created window will show. |
| utility | Set this to true, to create a floating utility window, false to create a normal window. |
| title | If GetWindow creates a new window, it will get this title. If this value is null, use the class name as title. |

### Description

Returns the first EditorWindow of type `t` which is currently on the screen.

If there is none, creates and shows new window at the position `rect` and returns the instance of it.


 *Create an empty 100x150px window at the upper left corner of the screen.*

```csharp
using UnityEngine;
using UnityEditor;

// Create a dockable empty window at the top left corner of the screen
// with 100px width and 150px height.

public class EditorWindowTestRect : EditorWindow
{
    [MenuItem("Examples/Display simple sized Window")]
    static void Initialize()
    {
        EditorWindowTestRect window = (EditorWindowTestRect)EditorWindow.GetWindowWithRect(typeof(EditorWindowTestRect), new Rect(0, 0, 100, 150));
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| T | The type of the window. Must derive from EditorWindow. |
| rect | The position on the screen where a newly created window will show. |
| utility | Set this to true, to create a floating utility window, false to create a normal window. |
| title | If GetWindow creates a new window, it will get this title. If this value is null, use the class name as title. |
| focus | Whether to give the window focus, if it already exists. (If GetWindow creates a new window, it will always get focus). |

### Returns

**T** An EditorWindow instance of type `T`.

### Description

Returns the first EditorWindow of type `t` which is currently on the screen.

If there is none, creates and shows new window at the position `rect` and returns the instance of it.
