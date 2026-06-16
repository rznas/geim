<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorTools.EditorToolContext.GetEditorToolType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| tool | The Tool that needs to be resolved to an EditorTool type. |

### Returns

**Type** An EditorTool type for the requested Tool.

### Description

Defines the EditorTool type for a given Tool.

This function resolves the correct EditorTool type for the active context. Unity only invokes it for manipulation tools, such as Tool.Move, Tool.Rotate, Tool.Scale, Tool.Rect, and Tool.Transform.
