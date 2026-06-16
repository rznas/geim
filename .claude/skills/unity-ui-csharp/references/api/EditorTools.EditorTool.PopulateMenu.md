<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorTools.EditorTool.PopulateMenu.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| menu | The Scene view context menu to add menu items to. |

### Description

Adds menu items to Scene view context menu.

Refer to MenuUtility for utility functions that add menu items to the Scene view context menu.

```csharp
public override void PopulateMenu(DropdownMenu menu)
{
    // Add all clipboard operations to the context menu (Cut, Copy, Paste, Delete, and Duplicate).
    ContextMenuUtility.AddClipboardEntriesTo(menu);

    // Add an item to the context menu using a delegate or an EditorAction.
    menu.AppendAction("Parent Item/Child Item", (item) => Debug.Log("Executed Child Item."));

    // Add an item to the context menu using a predefined MenuItem.
    ContextMenuUtility.AddMenuItem(menu, "GameObject/Move To View");
}
```
