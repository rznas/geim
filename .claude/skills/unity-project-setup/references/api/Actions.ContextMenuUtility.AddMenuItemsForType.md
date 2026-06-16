<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Actions.ContextMenuUtility.AddMenuItemsForType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| menu | The context menu to add all MenuItem for a specific type to. |
| targets | The target objects for the menu items. |
| type | The object type to search for when collecting context menu items. |
| submenu | Optional name of the submenu category to filter results by. |

### Description

Adds all MenuItem of a specific type to the Scene view context menu.

```csharp
using UnityEditor;
using UnityEditor.Actions;
using UnityEditor.Overlays;
using UnityEngine;
using UnityEngine.UIElements;

[Overlay(typeof(SceneView), "Context Menu Example", defaultDisplay = true)]
class ContextMenuExample : Overlay
{
    [MenuItem("CONTEXT/Transform/Print Selected")]
    static void Init(MenuCommand cmd)
    {
        Debug.Log($"Selected transforms: {cmd.context}");
    }

    static void PopulateMenuItems(ContextualMenuPopulateEvent evt)
    {
        ContextMenuUtility.AddMenuItemsForType(evt.menu, typeof(Transform), Selection.transforms);
    }

    public override VisualElement CreatePanelContent()
    {
        var root = new VisualElement();
        ContextualMenuManipulator manipulator = new ContextualMenuManipulator(PopulateMenuItems);
        manipulator.target = root;
        const string text = "Context click here to show the context menu items for the selected Transform components.";
        root.Add(new Label(text));
        root.style.width = 256;
        root.style.height = 128;
        return root;
    }
}
```
