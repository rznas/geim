<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUIUtility.AddCursorRect.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | The rectangle the control should be shown within. |
| mouse | The mouse cursor to use. |
| controlID | ID of a target control. |

### Description

Add a custom mouse pointer to a control.

```csharp
// Create a small window that has a color box in it.
// Hovering over it causes a Zoom mouse cursor to appear.  (The window is not
// zoomed however.)
using UnityEngine;
using UnityEditor;public class AddCursorRectExample : EditorWindow
{
    [MenuItem("Examples/AddCursorRect Example")]
    static void addCursorRectExample()
    {
        AddCursorRectExample window =
            EditorWindow.GetWindowWithRect<AddCursorRectExample>(new Rect(0, 0, 180, 80));
        window.Show();
    }    void OnGUI()
    {
        EditorGUI.DrawRect(new Rect(10, 10, 160, 60), new Color(0.5f, 0.5f, 0.85f));
        EditorGUI.DrawRect(new Rect(20, 20, 140, 40), new Color(0.9f, 0.9f, 0.9f));
        EditorGUIUtility.AddCursorRect(new Rect(20, 20, 140, 40), MouseCursor.Zoom);
    }
}
```
