<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Toolbars.MainToolbarElement.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Describes the content and behaviour of a main toolbar element.

The main toolbar uses these descriptors to create and update its toolbar elements.

Additional resources: MainToolbarElementAttribute, MainToolbarButton, MainToolbarToggle, MainToolbarDropdown, MainToolbarSlider, MainToolbarLabel.

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

### Properties

| Property | Description |
| --- | --- |
| content | The MainToolbarContent describes the content of a main toolbar element. For example, text, icon, or tooltip. |
| displayed | Specifies whether the `VisualElement` for this toolbar element should be displayed or not. Set to `True` by default. |
| enabled | Specifies whether a toolbar element should receive input events. Set to `True` by default. |
| populateContextMenu | Add content to the context menu that appears when you right-click this toolbar element. |
