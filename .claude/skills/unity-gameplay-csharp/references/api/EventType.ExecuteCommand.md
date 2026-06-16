<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EventType.ExecuteCommand.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Execute a special command (eg. copy & paste).

"Copy", "Cut", "Paste", "Delete", "FrameSelected", "Duplicate", "SelectAll" and so on. Sent only in the editor. Example. Checking that that a frame has the focus:

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void OnGUI()
    {
        //implement frame selection
        Event e = Event.current;
        if (e.type == EventType.ExecuteCommand ||
            e.type == EventType.ValidateCommand)
        {
            if (Event.current.commandName == "FrameSelected")
                Debug.Log("frame selected");
        }
    }
}
```

Additional resources: Event.commandName, EventType.ValidateCommand.
