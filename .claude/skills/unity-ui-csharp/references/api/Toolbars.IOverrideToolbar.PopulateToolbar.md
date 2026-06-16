<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Toolbars.IOverrideToolbar.PopulateToolbar.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| toolbarType | The built-in toolbar to override. |
| elements | List of the built-in toolbar's default element IDs. |

### Description

Overrides the contents of built-in toolbars.

This method is called before populating contents of built-in toolbars that support overriding. Use toolbarType to check which toolbar this method is called for. Change the elements list to remove or reorder the built-in elements, or add the EditorToolbarElementAttribute IDs of custom elements.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.EditorTools;
using UnityEditor.Toolbars;

[EditorTool("Custom Tool")]
public class CustomTool : EditorTool { }

[CustomEditor(typeof(CustomTool))]
public class CustomToolSettings : Editor, IOverrideToolbar
{
    public void PopulateToolbar(OverridableToolbar toolbarType, List<string> elements)
    {
        switch (toolbarType)
        {
            case OverridableToolbar.ToolSettings:
                // Add a custom button at the end of the Scene view's 'Tool Settings' toolbar
                elements.Add(CustomToolSettingsButton.k_ID);
                break;

            case OverridableToolbar.ViewOptions:
                // Remove '2D' and 'Audio' buttons from the Scene view's 'View Options' toolbar
                elements.Remove("SceneView/2D");
                elements.Remove("SceneView/Audio");
                break;
        }
    }
}

[EditorToolbarElement(k_ID)]
public class CustomToolSettingsButton : EditorToolbarButton
{
    public const string k_ID = "Custom Tool/Settings Button";
    CustomToolSettingsButton() { text = "SB"; }
}
```
