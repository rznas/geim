<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorTools.EditorToolContextAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Registers an EditorToolContext as either a global context or a Component context for a specific target type.

A Global tool context is always available in the toolbar menu. A Component tool context is only available when the current selection contains a matching target type.

### Constructors

| Constructor | Description |
| --- | --- |
| EditorToolContextAttribute | Registers an EditorToolContext as either a global tool context or a Component tool context. |

### Inherited Members

### Static Properties

| Property | Description |
| --- | --- |
| defaultPriority | The default value for ToolAttribute.toolPriority and ToolAttribute.variantPriority. Specify a priority lower than this value to display a tool before the default entries, or specify a higher value to display it after the default entries. |

### Properties

| Property | Description |
| --- | --- |
| allowPersistentTargets | Allows the tool to target persistent objects. This is only compatible with ScriptableObjects. When you develop tools that target persistent objects, let users know whether they're editing an in-scene or a persistent object. |
| displayName | The name that displays in menus. |
| group | Tool groups place logically similar tools under a single header in the Tools Overlay. |
| targetContext | If provided, the EditorTool will only be made available when the ToolManager.activeContextType is equal to targetContext. |
| targetType | Set to the type that this EditorTool or EditorToolContext can edit. Set to null if the tool is not specific to a Component and should be available at any time. |
| toolPriority | Tool priority defines the order that tools are displayed in within the Tools Overlay. |
| variantGroup | Tool variants are used to group logically similar tools into a single button in the Tools Overlay. |
| variantPriority | The variant priority defines the order that tools are displayed in when they are displayed in a ToolAttribute.variantGroup dropdown. |
