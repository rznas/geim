<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUIUtility.CommandEvent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| commandName | The command to be sent. |

### Description

Creates an event that can be sent to another window.

```csharp
// Sends a paste event to an EditorWindow, as if Paste
// was selected from the Edit menu.using UnityEngine;
using UnityEditor;public class CommandEventExample : EditorWindow
{
    [MenuItem("Examples/CommandEvent example")]
    static void commandEventExample()
    {
        CommandEventExample window = EditorWindow.GetWindowWithRect<CommandEventExample>(new Rect(0, 0, 150, 40));
        window.Show();
    }    void OnGUI()
    {
        if (GUILayout.Button("Paste"))
        {
            Event e = EditorGUIUtility.CommandEvent("Paste");
            EditorWindow ew = EditorWindow.GetWindow<CommandEventTest>(true);
            ew.SendEvent(e);
        }
    }
}
```

The script below receives the Paste message sent from CommandEventExample above.

```csharp
using UnityEngine;
using UnityEditor;public class CommandEventTest : EditorWindow
{
    private int eventCount = 0;    [MenuItem("Examples/Example that receives a paste event")]
    static void test()
    {
        CommandEventTest window = EditorWindow.GetWindowWithRect<CommandEventTest>(new Rect(0, 0, 100, 40));
        window.Show();
    }    void OnGUI()
    {
        EditorGUI.LabelField(new Rect(10, 10, 90, 30), "Paste: " + eventCount.ToString());        if (Event.current.type == EventType.ExecuteCommand)
        {
            Event e = Event.current;
            if (e.commandName == "Paste")
            {
                eventCount = eventCount + 1;
            }
        }
    }
}
```
