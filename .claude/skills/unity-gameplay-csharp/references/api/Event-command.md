<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Event-command.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Is Command/Windows key held down? (Read Only)

On Windows, this returns true if any Windows key is held down. 
 On Mac, this returns true if any Command key is held down.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Prints Command/Windows key was pressed depending on the
    // platform where this script is running.
    void OnGUI()
    {
        Event e = Event.current;
        if (e.command)
        {
            if (Application.platform == RuntimePlatform.OSXEditor)
            {
                Debug.Log("Command key was pressed");
            }
            else if (Application.platform == RuntimePlatform.WindowsEditor)
            {
                Debug.Log("Windows Key was pressed!");
            }
        }
    }
}
```
