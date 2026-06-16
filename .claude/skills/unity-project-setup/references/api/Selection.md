<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Selection.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Access to the selection in the editor.

### Static Properties

| Property | Description |
| --- | --- |
| activeContext | Returns the current context object, as was set via SetActiveObjectWithContext. |
| activeEntityId | Returns the entityId of the actual object selection. Includes Prefabs, non-modifiable objects. |
| activeGameObject | Returns the active game object. (The one shown in the inspector). |
| activeObject | Returns the actual object selection. Includes Prefabs, non-modifiable objects. |
| activeTransform | Returns the active transform. (The one shown in the inspector). |
| assetGUIDs | Returns the guids of the selected assets. |
| count | Returns the number of objects in the Selection. |
| entityIds | The actual unfiltered selection from the Scene returned as entityIds instead of objects. |
| gameObjects | Returns the actual game object selection. Includes Prefabs, non-modifiable objects. |
| objects | The actual unfiltered selection from the Scene. |
| selectionChanged | Delegate callback triggered when currently active/selected item has changed. |
| transforms | Returns the top level selection, excluding Prefabs. |

### Static Methods

| Method | Description |
| --- | --- |
| Contains | Returns whether an object is contained in the current selection. |
| GetFiltered | Returns the current selection filtered by type and mode. |
| GetTransforms | Retrieves the transforms of selected objects. |
| SetActiveObjectWithContext | Selects an object with a context. |
