<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorUtility.DisplayPopupMenu.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Displays a popup menu.

Menu is shown at position `pos`, generated from a submenu specified by `menuItemPath` using a MenuCommand as menu context.

```csharp
using UnityEditor;
using UnityEngine;
using System.Collections;// Shows the Assets menu when you right click on the contextRect Rectangle.
public class EditorUtilityDisplayPopupMenu : MonoBehaviour
{
    void OnGUI()
    {
        Event evt = Event.current;
        Rect contextRect = new Rect(10, 10, 100, 100);
        if (evt.type == EventType.ContextClick)
        {
            Vector2 mousePos = evt.mousePosition;
            if (contextRect.Contains(mousePos))
            {
                EditorUtility.DisplayPopupMenu(new Rect(mousePos.x, mousePos.y, 0, 0), "Assets/", null);
                evt.Use();
            }
        }
    }
}
```
