<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Input.GetPenEvent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**PenData** Pen event details in the struct.

### Description

Returns the PenData for the pen event at the given index in the pen event queue.

**Note**: This API is part of the legacy Input Manager. The recommended best practice is that you don't use this API in new projects. For new projects, use the Input System package. To learn more about input, refer to Input.

On Windows, the pen event queue holds, in chronological order, any missed pen events as provided by GetPointerPenInfoHistory. The queue is cleared at the end of each frame. On all other platforms the queue will always be empty.

```csharp
using UnityEditor;
using UnityEngine;public class Example : EditorWindow
{
    [MenuItem("Window/Pen Window")]
    public static void ShowWindow()
    {
        EditorWindow win = EditorWindow.GetWindow(typeof(Example));
        win.titleContent = new GUIContent("Pen Window");
        win.wantsMouseMove = true;
    }    void OnGUI()
    {
        var e = Event.current;
        if ((e.type == EventType.MouseDown
             || e.type == EventType.MouseDrag
             || e.type == EventType.MouseDown
             || e.type == EventType.MouseUp
             || e.type == EventType.MouseMove)
            && (e.pointerType == PointerType.Pen))
        {
            int count = Input.penEventCount;
            for (int i = 0; i < count; i++)
            {
                // Log data from queued pen events
                PenData p = Input.GetPenEvent(i);
                Debug.Log($"Pen position {p.position}, pen pressure {p.pressure}, pen twist {p.twist}, pen tilt {p.tilt}, pen status - barrel {(p.penStatus & PenStatus.Barrel) != 0}");
            }
            Input.ResetPenEvents();
        }
    }
}
```
