<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorTools.ToolAttribute-group.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Tool groups place logically similar tools under a single header in the Tools Overlay.

Use Tool groups when tools that have different ToolAttribute.targetType need to stay together in the Tools Overlay. Otherwise, they're grouped by their scope: built-in, additional built-in, global, and component.

```csharp
using UnityEngine;
using UnityEditor.EditorTools;

namespace ToolGroupsExample
{
    // Group A
    [Icon("Assets/ToolGroupA.png")]
    public class ToolGroup_A {}

    [EditorTool("Tool A (Group A)", typeof(Transform), group = typeof(ToolGroup_A))]
    public class ToolA_GroupA : EditorTool {}

    [EditorTool("Tool B (Group A)", typeof(BoxCollider), group = typeof(ToolGroup_A))]
    public class ToolB_GroupA : EditorTool {}

    // Group B
    [Icon("Assets/ToolGroupB.png")]
    public class ToolGroup_B {}

    [EditorTool("Tool A (Group B)", typeof(MeshRenderer), group = typeof(ToolGroup_B))]
    public class ToolA_GroupB : EditorTool {}

    [EditorTool("Tool B (Group B)", typeof(SphereCollider), group = typeof(ToolGroup_B))]
    public class ToolB_GroupB : EditorTool {}

    // Global
    [EditorTool("Tool C (Global - Ungrouped)")]
    public class ToolC_Global : EditorTool {}

    // Component
    [EditorTool("Tool D (Component - Ungrouped)", typeof(Transform))]
    public class ToolD_Ungrouped : EditorTool {}
}
```
