<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.DropdownMenu.AppendSeparator.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| subMenuPath | The submenu path to add the separator to. Path components are delimited by forward slashes ('/'). |

### Description

Adds a separator line in the menu.

The separator is added at the end of the current item list.

```csharp
using UnityEditor;
using UnityEngine;
using UnityEngine.UIElements;public class ContextMenuWindow : EditorWindow
{
    [MenuItem("My/Context Menu Window")]
    static void ShowMe() => GetWindow<ContextMenuWindow>();    void CreateGUI()
    {
        var contextMenuContainer = new VisualElement();
        contextMenuContainer.style.flexGrow = 1;
        contextMenuContainer.AddManipulator(new ContextualMenuManipulator(e =>
        {
            e.menu.AppendAction("My Action 1", a => Debug.Log("My Action 1 Works"), DropdownMenuAction.Status.Normal);
            e.menu.AppendSeparator();
            e.menu.AppendAction("My Action 2", a => Debug.Log("My Action 2 Works"), DropdownMenuAction.Status.Normal);            e.menu.AppendAction("Submenu/My Action 3", a => Debug.Log("My Action 3 Works"), DropdownMenuAction.Status.Normal);
            e.menu.AppendSeparator("Submenu/");
            e.menu.AppendAction("Submenu/My Action 4", a => Debug.Log("My Action 4 Works"), DropdownMenuAction.Status.Normal);
        }));        rootVisualElement.Add(contextMenuContainer);
    }
}
```
