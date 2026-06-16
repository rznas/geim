<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorTools.ToolManager.SetActiveTool.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| type | The EditorTool type to set as the active tool. |
| tool | The EditorTool instance to set as the active tool. |

### Description

Sets the active EditorTool.

To set a built-in tool, such as Move, Rotate, or Scale, to active, use Tools.current instead.

```csharp
using UnityEditor;
using UnityEditor.EditorTools;
using UnityEngine;

class ToolToSetActive : EditorTool
{
    [MenuItem("Tools/Set Active Tool Type")]
    static void SetActiveToolExample()
    {
        ToolManager.SetActiveTool<ToolToSetActive>();
    }

    Vector3 m_Position;

    public override void OnToolGUI(EditorWindow window)
    {
        m_Position = Handles.PositionHandle(m_Position, Quaternion.identity);
        Debug.Log(m_Position);
    }
}
```
