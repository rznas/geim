<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorTools.CreationToolsGroup.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This class represents the creation tools group. Pass this class’s type to the ToolAttribute.group parameter to place your EditorTool button in the built-in creation tools group in the Tools overlay.

Only tools that create new objects and/or data in the Scene View should be registered to this group.

```csharp
using UnityEditor.EditorTools;// Register Editor Tool as a creation tool
[EditorTool("Custom Creation Tool", group = typeof(CreationToolsGroup))]
public class CustomCreationTool : EditorTool { }
```
