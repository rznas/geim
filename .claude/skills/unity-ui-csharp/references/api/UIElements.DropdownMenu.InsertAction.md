<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.DropdownMenu.InsertAction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| atIndex | The index to insert the item at. |
| actionName | The name of the item. This name is displayed in the dropdown menu. |
| action | Callback to execute when the user selects this item in the menu. |
| actionStatusCallback | The callback to execute to determine the status of the item. |
| userData | The object to store in the `userData` property of the DropdownMenuAction item. This object is accessible through the action callback. |

### Description

Adds an item that executes an action in the dropdown menu.

The item is added to the end of the specified index in the list.

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
            e.menu.AppendAction("My Action 1", a => Debug.Log("My Action 1 Works"), DropdownMenuAction.Status.Normal);  // 0
            e.menu.AppendAction("My Action 3", a => Debug.Log("My Action 3 Works"), DropdownMenuAction.Status.Normal);  // 1
            e.menu.AppendAction("Submenu/My Action 4", a => Debug.Log("My Action 4 Works"), DropdownMenuAction.Status.Normal);  // 2
            e.menu.AppendAction("Submenu/My Action 6", a => Debug.Log("My Action 6 Works"), DropdownMenuAction.Status.Normal);  // 3            // Indices from 1 to 3 are shifted up index by 1. In result 'My Action 2' now has an index of 2.
            e.menu.InsertAction(1, "My Action 2", a => Debug.Log("My Action 2 Works"), DropdownMenuAction.AlwaysEnabled);            // If we want to insert an between submenu items, we have to use shifted indices
            e.menu.InsertAction(4, "Submenu/My Action 5", a => Debug.Log("My Action 5 Works"), DropdownMenuAction.AlwaysDisabled);
        }));        rootVisualElement.Add(contextMenuContainer);
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| atIndex | The index to insert the item at. |
| actionName | The name of the item. This name is displayed in the dropdown menu. |
| action | The callback to execute when the user selects this item in the menu. |
| status | The status of the item. |

### Description

Adds an item that executes an action in the dropdown menu.

The item is added to the end of the specified index in the list.

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
            e.menu.AppendAction("My Action 1", a => Debug.Log("My Action 1 Works"), DropdownMenuAction.Status.Normal);  // 0
            e.menu.AppendAction("My Action 3", a => Debug.Log("My Action 3 Works"), DropdownMenuAction.Status.Normal);  // 1
            e.menu.AppendAction("Submenu/My Action 4", a => Debug.Log("My Action 4 Works"), DropdownMenuAction.Status.Normal);  // 2
            e.menu.AppendAction("Submenu/My Action 6", a => Debug.Log("My Action 6 Works"), DropdownMenuAction.Status.Normal);  // 3            // Indices from 1 to 3 are shifted up index by 1. In result 'My Action 2' now has an index of 2.
            e.menu.InsertAction(1, "My Action 2", a => Debug.Log("My Action 2 Works"), DropdownMenuAction.Status.Normal);            // If we want to insert an between submenu items, we have to use shifted indices
            e.menu.InsertAction(4, "Submenu/My Action 5", a => Debug.Log("My Action 5 Works"), DropdownMenuAction.Status.Disabled);
        }));        rootVisualElement.Add(contextMenuContainer);
    }
}
```
