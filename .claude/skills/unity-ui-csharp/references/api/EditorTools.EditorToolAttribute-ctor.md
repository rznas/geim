<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorTools.EditorToolAttribute-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| displayName | The name to display in menus. |
| componentToolTarget | The type this tool can edit. Set to null if the tool is not a Component tool. |
| editorToolContext | The EditorToolContext type that this tool relates to. When an EditorTool defines an `editorToolContext` scope, the tool is not shown in menus and must be activated by the EditorToolContext.ResolveTool method. |
| toolPriority | The order to display tools in the Tools overlay in. Refer to ToolAttribute.toolPriority. |
| variantGroup | The tool variant group to assign the tool to in the Tools overlay. Tool variants are used to group similar tools into a single button in the Tools overlay. Refer to ToolAttribute.variantGroup. |
| variantPriority | The variant priority defines the order that tools are displayed in when they are displayed in a ToolAttribute.variantGroup dropdown. |

### Description

Registers an EditorTool as either a Global tool or a CustomEditor tool.

A Global tool is always available in the toolbar menu. A CustomEditor tool is only available when the current selection contains a matching target type.
