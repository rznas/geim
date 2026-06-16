<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Event-character.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The character typed.

Used in EventType.KeyDown event. Note that EventType.KeyUp events might not contain a character, only Event.keyCode.

Additional resources: Event.keyCode.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void OnGUI()
    {
        Event e = Event.current;
        if (e.isKey)
        {
            Debug.Log("Detected character: " + e.character);
        }
    }
}
```
