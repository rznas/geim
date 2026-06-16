<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Event-alt.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Is Alt/Option key held down? (Read Only)

On Windows, this returns true if any Alt key is held down. 
 On Mac, this returns true if any Option key is held down.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Prints Option or Alt key was pressed depending on the
    // platform where this script is running.
    void OnGUI()
    {
        Event e = Event.current;
        if (e.alt)
        {
            if (Application.platform == RuntimePlatform.OSXEditor)
            {
                Debug.Log("Option key was pressed");
            }
            else if (Application.platform == RuntimePlatform.WindowsEditor)
            {
                Debug.Log("Alt Key was pressed!");
            }
        }
    }
}
```
