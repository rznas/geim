<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Toolbars.MainToolbarLabel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A label element for the main toolbar.

To add a label element in the main toolbar, use a static method registered with MainToolbarElementAttribute to return this class. To construct the content of the label, use MainToolbarContent.

```csharp
using UnityEditor;
using UnityEditor.Toolbars;
using UnityEngine;

public class MainToolbarLabelExample
{
    [MainToolbarElement("Examples/Information Label", defaultDockPosition = MainToolbarDockPosition.Middle)]
    public static MainToolbarElement InformationLabel()
    {
        return new MainToolbarLabel(new MainToolbarContent("Information", EditorGUIUtility.FindTexture("Search Icon"), "This shows information" ));
    }
}
```

### Constructors

| Constructor | Description |
| --- | --- |
| MainToolbarLabel | Specifies the content of a main toolbar label. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| content | The MainToolbarContent describes the content of a main toolbar element. For example, text, icon, or tooltip. |
| displayed | Specifies whether the `VisualElement` for this toolbar element should be displayed or not. Set to `True` by default. |
| enabled | Specifies whether a toolbar element should receive input events. Set to `True` by default. |
| populateContextMenu | Add content to the context menu that appears when you right-click this toolbar element. |
