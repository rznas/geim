<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.DropdownMenu.ClearItems.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Clears all items from the menu.

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
            e.menu.AppendAction("My Action 2", a => Debug.Log("My Action 2 Works"), DropdownMenuAction.Status.Normal);
            e.menu.ClearItems();
            e.menu.AppendAction("My Action 3", a => Debug.Log("My Action 3 Works"), DropdownMenuAction.Status.Normal);
        }));        rootVisualElement.Add(contextMenuContainer);
    }
}
```
