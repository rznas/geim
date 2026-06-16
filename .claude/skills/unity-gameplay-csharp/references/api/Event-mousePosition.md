<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Event-mousePosition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The mouse position.

Used in EventType.MouseMove and EventType.MouseDrag events. The top-left of the window returns (0, 0). The bottom-right returns (Screen.width, Screen.height).

Additional resources: Event.delta.

```csharp
using UnityEngine;
using System.Collections;// print the mousePosition every 10th of a secondpublic class ExampleClass : MonoBehaviour
{
    private float range = 0.0f;    void OnGUI()
    {
        range = range + Time.deltaTime;        if (range > 0.1f)
        {
            Event e = Event.current;
            Debug.Log(e.mousePosition);
            range = 0.0f;
        }
    }
}
```
