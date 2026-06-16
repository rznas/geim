<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GenericMenu.AddSeparator.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | The path to the submenu, if adding a separator to a submenu. When adding a separator to the top level of a menu, use an empty string as the path. |

### Description

Add a seperator item to the menu.

Additional resources: GenericMenu.AddItem, GenericMenu.AddDisabledItem.

```csharp
// This example shows how to create a context menu inside a custom EditorWindow.
using UnityEngine;
using UnityEditor;public class MyWindow : EditorWindow
{
    [MenuItem("TestContextMenu/Open Window")]
    public static void Init()
    {
        var window = GetWindow(typeof(MyWindow));
        window.position = new Rect(50, 50, 250, 60);
        window.Show();
    }    public void Callback(object obj)
    {
        Debug.Log("Selected: " + obj);
    }    public void OnGUI()
    {
        Event evt = Event.current;
        Rect contextRect = new Rect(10, 10, 100, 100);        if (evt.type == EventType.ContextClick)
        {
            Vector2 mousePos = evt.mousePosition;
            if (contextRect.Contains(mousePos))
            {
                // Now create the menu, add items and show it
                GenericMenu menu = new GenericMenu();                menu.AddItem(new GUIContent("MenuItem1"), false, Callback, "item 1");
                menu.AddItem(new GUIContent("MenuItem2"), false, Callback, "item 2");
                menu.AddSeparator("");
                menu.AddItem(new GUIContent("SubMenu/MenuItem3"), false, Callback, "item 3");
                menu.AddItem(new GUIContent("SubMenu/MenuItem4"), false, Callback, "item 4");
                menu.AddItem(new GUIContent("SubMenu/MenuItem5"), false, Callback, "item 5");
                menu.AddSeparator("SubMenu/");
                menu.AddItem(new GUIContent("SubMenu/MenuItem6"), false, Callback, "item 6");                menu.ShowAsContext();                evt.Use();
            }
        }
    }
}
```
