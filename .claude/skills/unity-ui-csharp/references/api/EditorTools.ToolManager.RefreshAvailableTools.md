<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorTools.ToolManager.RefreshAvailableTools.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Call RefreshAvailableTools to rebuild the contents of the Scene View Tools Overlay.

This method is useful when a tool can change the value of EditorTool.IsAvailable outside of selection and tool change events.

```csharp
using System;
using UnityEditor;
using UnityEditor.EditorTools;
using UnityEngine;// An example of a tool that may be made available or unavailable in situations other than selection changes.
[EditorTool("Conditional Tool", typeof(Transform))]
class ConditionallyAvailable : EditorTool
{
    bool m_IsAvailable;
    void OnEnable() => EditorApplication.update += UpdateAvailable;
    void OnDisable() => EditorApplication.update -= UpdateAvailable;    // This tool is enabled and disabled in 10 second intervals.
    void UpdateAvailable()
    {
        var time = DateTime.Now;        if (m_IsAvailable != ((time.Second / 10) % 2 == 0))
        {
            m_IsAvailable = !m_IsAvailable;
            // Because the tool is changing availability arbitrarily, it is necessary to manually refresh the UI.
            ToolManager.RefreshAvailableTools();
        }
    }    // When a tool is available, it is shown in the Tools Overlay. If not available, it is hidden.
    public override bool IsAvailable() => m_IsAvailable;
}
```
