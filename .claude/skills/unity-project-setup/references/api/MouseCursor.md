<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MouseCursor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Custom mouse cursor shapes used with EditorGUIUtility.AddCursorRect.

```csharp
//Create a folder and name it “Editor” if this doesn’t already exist
//Put this script in the folder//This script creates a new menu (“Examples”) and a menu item (“Mouse Cursor”). Click on this option. This displays a small window that has a color box in it.
//Hover over the colored box to cause an Orbit mouse cursor to appear.
using UnityEngine;
using UnityEditor;public class MouseCursorExample : EditorWindow
{
    [MenuItem("Examples/MouseCursorRect Example")]
    static void AddCursorRectExample()
    {
        MouseCursorExample window =
            EditorWindow.GetWindowWithRect<MouseCursorExample>(new Rect(0, 0, 180, 80));
        window.Show();
    }    void OnGUI()
    {
        EditorGUI.DrawRect(new Rect(10, 10, 160, 60), new Color(0.5f, 0.5f, 0.85f));
        EditorGUI.DrawRect(new Rect(20, 20, 140, 40), new Color(0.9f, 0.9f, 0.9f));
        EditorGUIUtility.AddCursorRect(new Rect(20, 20, 140, 40), MouseCursor.Orbit);
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| Arrow | Normal pointer arrow. |
| Text | Text cursor. |
| ResizeVertical | Vertical resize arrows. |
| ResizeHorizontal | Horizontal resize arrows. |
| Link | Arrow with a Link badge (for assigning pointers). |
| SlideArrow | Arrow with small arrows for indicating sliding at number fields. |
| ResizeUpRight | Resize up-right for window edges. |
| ResizeUpLeft | Resize up-Left for window edges. |
| MoveArrow | Arrow with the move symbol next to it for the sceneview. |
| RotateArrow | Arrow with the rotate symbol next to it for the sceneview. |
| ScaleArrow | Arrow with the scale symbol next to it for the sceneview. |
| ArrowPlus | Arrow with the plus symbol next to it. |
| ArrowMinus | Arrow with the minus symbol next to it. |
| Pan | Cursor with a dragging hand for pan. |
| Orbit | Cursor with an eye for orbit. |
| Zoom | Cursor with a magnifying glass for zoom. |
| FPS | Cursor with an eye and stylized arrow keys for FPS navigation. |
| CustomCursor | The current user defined cursor. |
| SplitResizeUpDown | Up-Down resize arrows for window splitters. |
| SplitResizeLeftRight | Left-Right resize arrows for window splitters. |
