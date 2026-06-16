<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.DropdownMenu.AppendAction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| actionName | The name of the item. This name is displayed in the dropdown menu. |
| action | The callback to execute when the user selects this item in the menu. |
| actionStatusCallback | The callback to execute to determine the status of this item. |
| userData | The object to store in the `userData` property of the DropdownMenuAction item. |

### Description

Adds an item that executes an action in the dropdown menu.

The item is added to the end of the current item list.

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
            e.menu.AppendAction("Submenu/My Action 1", a => Debug.Log("My Action 1 Works"), action =>
            {
                action.tooltip = "Status dependent tooltip";
                return DropdownMenuAction.Status.Normal;
            }, null);
        }));        rootVisualElement.Add(contextMenuContainer);
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| actionName | The name of the item. This name is displayed in the dropdown menu. |
| action | The callback to execute when the user selects this item in the menu. |
| status | The status of the item. |

### Description

Adds an item that executes an action in the dropdown menu.

The item is added to the end of the current item list.

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
        }));        rootVisualElement.Add(contextMenuContainer);
    }
}
```
