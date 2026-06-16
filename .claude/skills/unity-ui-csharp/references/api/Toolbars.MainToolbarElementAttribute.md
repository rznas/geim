<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Toolbars.MainToolbarElementAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Registers a static method you can use to extend the main toolbar with custom UI elements.

Methods tagged with this attribute return a MainToolbarElement or one of its child types. It's also possible to return an IEnumerable of MainToolbarElement to group multiple elements together (See example below). Each MainToolbarElement describes the content and behaviour of a toolbar element and the main toolbar queries these methods when it needs to create or update its toolbar elements.

Additional resources: MainToolbarButton, MainToolbarToggle, MainToolbarDropdown, MainToolbarSlider, MainToolbarLabel.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.Toolbars;
using UnityEngine;
using UnityEngine.UIElements;

public class MyCustomElement 
{
    const string k_ToolbarElementName = "Examples/Analysis Windows";
    static (string, string, string)[] s_Elements = 
        new(string name, string tooptip, string menuPath)[]
        {
            // Open profiler window
            ("Profiler", "Open the Profiler window","Window/Analysis/Profiler"),
            // Open frame debugger window
            ("Frame Debugger", "Open the Frame Debugger window","Window/Analysis/Frame Debugger"),
            // Open physics debugger window
            ("Physics Debugger", "Open the Physics Debugger window","Window/Analysis/Physics Debugger")
        };

    static bool s_DisplayAsButtons = true;
    
    [MainToolbarElement(k_ToolbarElementName, defaultDockPosition = MainToolbarDockPosition.Middle)]
    static IEnumerable<MainToolbarElement> CreateAnalysisWindowsBar()
    {
        if (s_DisplayAsButtons)
        {
            foreach (var element in s_Elements)
            {
                yield return new MainToolbarButton(
                    new MainToolbarContent(element.Item1, element.Item2),
                    () => EditorApplication.ExecuteMenuItem(element.Item3))
                {
                    populateContextMenu = PopulateContextMenu,
                };
            }
        }
        else
        {
            yield return new MainToolbarDropdown(
                new MainToolbarContent("Analysis", "Open the list of available analysis windows"),
                ShowDropdownMenu)
            {
                populateContextMenu = PopulateContextMenu,
            };
        }
    }

    static void PopulateContextMenu(DropdownMenu menu)
    {
        menu.AppendAction(
            L10n.Tr(s_DisplayAsButtons ? "Display as Dropdown" : "Display as Buttons"),
            UpdateDisplayType);
    }

    static void UpdateDisplayType(DropdownMenuAction _)
    {
        s_DisplayAsButtons = !s_DisplayAsButtons;
        MainToolbar.Refresh(k_ToolbarElementName);
    }

    static void ShowDropdownMenu(Rect dropDownRect)
    {
        var menu = new GenericMenu();
        foreach (var element in s_Elements)
        {
            menu.AddItem(new GUIContent(element.Item1), false, () =>
            {
                EditorApplication.ExecuteMenuItem(element.Item3);
            });
        }
        menu.DropDown(dropDownRect);
    }
}
```

### Static Properties

| Property | Description |
| --- | --- |
| defaultMenuPriority | The default value for MainToolbarElement.menuPriority. Specify a priority lower than this value to display a main toolbar element's menu item before the default entries, or specify a higher value to display it after the default entries. |

### Properties

| Property | Description |
| --- | --- |
| defaultDockIndex | Specify the order in which custom elements are docked in the main toolbar. |
| defaultDockPosition | Use this property to specify the default dock position of the element: the left, the middle, or the right. |
| menuPriority | Menu priority defines the order that main toolbar elements are displayed in within the toolbar's menu. |
| path | The unique identifier of this toolbar element. |
