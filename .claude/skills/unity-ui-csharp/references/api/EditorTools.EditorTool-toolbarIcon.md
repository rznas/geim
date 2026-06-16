<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorTools.EditorTool-toolbarIcon.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The icon and tooltip for this custom editor tool. If this function is not implemented, the toolbar displays the Inspector icon for the target type. If no target type is defined, the toolbar displays the Tool Mode icon.

This property is accessed frequently, so load the icon's GUIContent in MonoBehaviour.OnEnable.

```csharp
using UnityEditor.EditorTools;
using UnityEngine;

public class ToolbarIconSample : MonoBehaviour {}

[EditorTool("Toolbar Icon Sample Tool", typeof(ToolbarIconSample))]
class ToolbarIconSampleTool : EditorTool
{
    GUIContent m_Icon;

    public override GUIContent toolbarIcon => m_Icon;

    private void OnEnable()
    {
        m_Icon = new GUIContent("Text Icon", "Toolbar Icon Sample Tool tooltip.");
    }

    private void OnDisable()
    {
        m_Icon = null;
    }
}
```
