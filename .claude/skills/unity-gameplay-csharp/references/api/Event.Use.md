<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Event.Use.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this event.

Call this method when you've used an event. The event's type will be set to EventType.Used, causing other GUI elements to ignore it.

Events of type EventType.Repaint and EventType.Layout should not be used. Attempting to call this method on such events will issue a warning.

The following example demonstrates how events are consumed and used up. Copy this code into a script, and open the Example Window this sample creates from the Window menu.

```csharp
using UnityEditor;
using UnityEngine;public class ExampleWindow : EditorWindow
{
    [MenuItem("Window/Show Example Window")]
    public static void ShowWindow()
    {
        GetWindow(typeof(ExampleWindow));
    }    private void OnGUI()
    {
        if (Event.current.type == EventType.MouseDown && Event.current.button == 0)
        {
            Debug.Log("Left clicked at: " + Event.current.mousePosition);
            // This if statement Uses up the current MouseDown event so that
            // subsequent code or GUI elements ignore this MouseDown event. 
            Event.current.Use();
        }        // This if statement does not check Event.current.button, but it only triggers
        // when Event.current.button is not 0 because the previous if statement will
        // Use up the MouseDown event if it is. 
        if (Event.current.type == EventType.MouseDown) 
        {
            Debug.Log("This only prints when we right click!");
            Event.current.Use();
        }
    }
}
```

The following example demonstrates how handles such as Handles.PositionHandle and Handles.FreeMoveHandle might use events.

```csharp
using UnityEditor;
using UnityEngine;public static class CustomHandle
{
    public static bool DoHandle(Vector3 worldpos, float size, float pickSize)
    {
        int id = GUIUtility.GetControlID(FocusType.Passive);
        Event evt = Event.current;        bool clicked = false;        switch (evt.GetTypeForControl(id))
        {
            case EventType.MouseDown:
                if (evt.button == 0 && HandleUtility.nearestControl == id)
                {
                    GUIUtility.hotControl = id;                    evt.Use(); // Using the MouseDown event
                    clicked = true;
                }
                break;            case EventType.MouseMove:
                HandleUtility.Repaint(); 
                evt.Use(); // Using the MouseMove event
                break;            case EventType.MouseUp:
                if (evt.button == 0 && HandleUtility.nearestControl == id)
                {
                    GUIUtility.hotControl = 0;
                    evt.Use(); // Using the MouseUp event
                }
                break;            case EventType.Layout:
                HandleUtility.AddControl(id, HandleUtility.DistanceToCircle(worldpos, pickSize));
                // Keep in mind Layout events should not be Used!
                break;            case EventType.Repaint:
                // Draw the handle here
                // Keep in mind Repaint events should not be Used!
                break;
        }        return clicked;
    }
}
```
