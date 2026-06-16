<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Event.KeyboardEvent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| key | A string representing keyboard keys and modifiers. |

### Returns

**Event** A new Event with EventType.KeyDown and the requested KeyCode and optional EventModifier.

### Description

Create a keyboard event.

This is useful when you need to check if a certain key has been pressed - possibly with modifiers. The syntax for the key string is a key name (same as in the Input Manager), optionally prefixed by any number of modifiers: 
 & = Alternate, ^ = Control, % = Command/Windows key, # = Shift 
 Examples: &f12 = Alternate + F12, "^[0]" = Control + keypad0 .


See the Input Manager manual page for more information on key names.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Detects if the Enter key was pressed
    void OnGUI()
    {
        GUILayout.Label("Press Enter To Start Game");        if (Event.current.Equals(Event.KeyboardEvent("[enter]")))
        {
            Application.LoadLevel(1);
        }        if (Event.current.Equals(Event.KeyboardEvent("return")))
        {
 		Debug.Log("I said enter, not return - try the keypad");
        }
    }
}
```
