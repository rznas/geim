<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUILayoutUtility.GetLastRect.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**Rect** The last used rectangle.

### Description

Get the rectangle last used by GUILayout for a control.

Note that this only works during the Repaint event.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void OnGUI()
    {
        GUILayout.Button("My button");
        if (Event.current.type == EventType.Repaint &&
            GUILayoutUtility.GetLastRect().Contains(Event.current.mousePosition))
        {
            GUILayout.Label("Mouse over!");
        }
        else
        {
            GUILayout.Label("Mouse somewhere else");
        }
    }
}
```
