<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Event-commandName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The name of an ExecuteCommand or ValidateCommand Event.

Available commands are:

"Copy", "Cut", "Paste", "Delete", "SoftDelete", "Duplicate", "FrameSelected", "FrameSelectedWithLock", "SelectAll", "Find" and "FocusProjectWindow".

Sent only in the editor.

Additional resources: EventType.ExecuteCommand, EventType.ValidateCommand.

```csharp
using UnityEngine;public class EventCmdNameExample : MonoBehaviour
{
    // Detects commands executed and prints them.
    void OnGUI()
    {
        Event e = Event.current;        if (e.commandName != "")
            Debug.Log("Command recognized: " + e.commandName);
    }
}
```
