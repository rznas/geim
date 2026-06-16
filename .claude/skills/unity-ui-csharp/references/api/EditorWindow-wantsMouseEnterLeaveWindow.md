<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorWindow-wantsMouseEnterLeaveWindow.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Checks whether MouseEnterWindow and MouseLeaveWindow events are received in the GUI in this Editor window.

If set to true, the window recieves an OnGUI call whenever the mouse enters or leaves a window.

**Note:** This function does not trigger Repaint() Automatically. Also, entering or leaving a window while a mouse button is pressed does not trigger either event, as pressing the mouse button activates drag mode (see EventType.MouseDrag and other drag-related events for more information).

```csharp
// Editor Script that shows how mouse enter and leave window events
// get caught in the Editor window

using UnityEditor;
using UnityEngine;

public class WantsMouseEnterLeaveWindowEx : EditorWindow
{
    [MenuItem("Examples/wantsMouseEnterLeaveWindow example")]
    static void Init()
    {
        EditorWindow editorWindow = GetWindow(typeof(WantsMouseEnterLeaveWindowEx));
        editorWindow.Show();
    }

    public void OnGUI()
    {
        wantsMouseEnterLeaveWindow = EditorGUILayout.Toggle("Receive Enter/Leave: ", wantsMouseEnterLeaveWindow);
        EditorGUILayout.LabelField("Check Console for MouseEnter/LeaveWindow messages");

        // Repaint the window as wantsMouseEnterLeaveWindow doesn't trigger a repaint automatically
        if (Event.current.type == EventType.MouseEnterWindow ||
            Event.current.type == EventType.MouseLeaveWindow)
        {
            Debug.Log("Received event " +
                ((Event.current.type == EventType.MouseEnterWindow) ? "MouseEnterWindow" : "MouseLeaveWindow"));
            Repaint();
        }
    }   
}
```
