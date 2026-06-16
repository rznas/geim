<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Toolbars.MainToolbarButton.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Describes the content and behaviour of a button element for the main toolbar.

To add a button element in the main toolbar use a static method registered with MainToolbarElementAttribute to return this class.

```csharp
using UnityEditor;
using UnityEditor.Toolbars;
using UnityEngine;

public class MainToolbarButtonExample
{
    [MainToolbarElement("Examples/Open Project Settings", defaultDockPosition = MainToolbarDockPosition.Middle)]
    public static MainToolbarElement ProjectSettingsButton()
    {
        var icon = EditorGUIUtility.IconContent("SettingsIcon").image as Texture2D;
        var content = new MainToolbarContent(icon);
        return new MainToolbarButton(content, () => { SettingsService.OpenProjectSettings(); });
    }
}
```

### Constructors

| Constructor | Description |
| --- | --- |
| MainToolbarButton | Specify the content and function of a main toolbar button. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| content | The MainToolbarContent describes the content of a main toolbar element. For example, text, icon, or tooltip. |
| displayed | Specifies whether the `VisualElement` for this toolbar element should be displayed or not. Set to `True` by default. |
| enabled | Specifies whether a toolbar element should receive input events. Set to `True` by default. |
| populateContextMenu | Add content to the context menu that appears when you right-click this toolbar element. |
