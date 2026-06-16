<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EventType.ValidateCommand.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Validates a special command (e.g. copy & paste).

"Copy", "Cut", "Paste", "Delete", "FrameSelected", "Duplicate", "SelectAll" and so on. Sent only in the editor.

Example: Make pasting work in current window or control:

```csharp
using UnityEngine;
using UnityEditor;public class Example : MonoBehaviour
{
    void OnGUI()
    {
        //implement frame selection
        Event e = Event.current;
        if (e.type == EventType.ValidateCommand && e.commandName == "Paste")
        {
            Debug.Log("validate paste");
            e.Use(); // without this line we won't get ExecuteCommand
        }        if (e.type == EventType.ExecuteCommand && e.commandName == "Paste")
        {
            Debug.Log("Pasting: " + EditorGUIUtility.systemCopyBuffer);
        }
    }
}
```

Additional resources: EventType.ExecuteCommand, Event.commandName.
