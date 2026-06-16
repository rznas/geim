<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorTools.ToolManager.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This class manipulates editor tools in the Scene view.

### Static Properties

| Property | Description |
| --- | --- |
| activeContextType | Gets the type of EditorToolContext that is currently active. The default value is GameObjectToolContext. |
| activeToolType | Gets the type of the EditorTool that is currently active. |

### Static Methods

| Method | Description |
| --- | --- |
| IsActiveContext | Test if an EditorToolContext is currently the active tool context. |
| IsActiveTool | Test if an EditorTool is currently the active tool. |
| RefreshAvailableTools | Call RefreshAvailableTools to rebuild the contents of the Scene View Tools Overlay. |
| RestorePreviousPersistentTool | Sets the last-used global EditorTool as the active tool. |
| RestorePreviousTool | Sets the last-used EditorTool as the active tool. |
| SetActiveContext | Sets the active EditorToolContext. |
| SetActiveTool | Sets the active EditorTool. |

### Events

| Event | Description |
| --- | --- |
| activeContextChanged | Defines an event handler for when the active EditorToolContext changes. |
| activeContextChanging | Defines an event handler for when the active EditorToolContext will change. |
| activeToolChanged | Defines an event handler for when the active tool changes. |
| activeToolChanging | Defines an event handler for when the active tool changes. |
