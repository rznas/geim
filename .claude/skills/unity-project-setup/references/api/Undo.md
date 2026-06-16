<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Undo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Lets you register undo operations on specific objects you are about to perform changes on.

The Undo system stores delta changes in the undo stack.

Undo operations automatically combine together based on events. For example, mouse down events split undo groups. Grouped undo operations appear and work as a single undo. To control grouping manually, use Undo.IncrementCurrentGroup.

By default, the name shown in the UI is selected from the actions from the group using a hardcoded ordering of the different kinds of actions. To manually set the name, use Undo.SetCurrentGroupName.

Undo operations store either per property or per object state. They scale well with any Scene size.

The most important operations are outlined below:

Modify object properties:
 `Undo.RecordObject (myGameObject.transform, "Zero Transform Position");`
 `myGameObject.transform.position = Vector3.zero;`

Add a component:
 `Undo.AddComponent<Rigidbody>(myGameObject);`

Create a new GameObject:
 `var go = new GameObject();`
 `Undo.RegisterCreatedObjectUndo (go, "Created go");`

Destroy a GameObject or component:
 `Undo.DestroyObjectImmediate (myGameObject);`

Change transform parenting:
 `Undo.SetTransformParent (myGameObject.transform, newTransformParent, "Set new parent");`

### Static Properties

| Property | Description |
| --- | --- |
| isProcessing | Returns true if the editor is currently processing undo or redo operations, false otherwise. |
| postprocessModifications | Callback that is triggered whenever a new set of property modifications is created. |
| undoRedoEvent | Callback that is triggered after any undo or redo event. |
| undoRedoPerformed | Callback that is triggered after an undo or a redo was executed. |
| willFlushUndoRecord | Invoked before the Undo system performs a flush. |

### Static Methods

| Method | Description |
| --- | --- |
| AddComponent | Adds a component to the game object and registers an undo operation for this action. |
| ClearAll | Removes all undo and redo operations from respectively the undo and redo stacks. |
| ClearUndo | Removes all Undo operation for the identifier object registered using Undo.RegisterCompleteObjectUndo from the undo stack. |
| CollapseUndoOperations | Collapses all undo operations down to group index together into one step. |
| DestroyObjectImmediate | Destroys the object and records an undo operation so that it can be recreated. |
| FlushUndoRecordObjects | Ensure objects recorded using RecordObject or RecordObjects are registered as an undoable action. In most cases there is no reason to invoke FlushUndoRecordObjects since it's automatically done right after mouse-up and certain other events that conventionally marks the end of an action. |
| GetCurrentGroup | Unity automatically groups undo operations by the current group index. |
| GetCurrentGroupName | Get the name that will be shown in the UI for the current undo group. |
| IncrementCurrentGroup | Unity automatically groups undo operations by the current group index. |
| MoveGameObjectToScene | Move a GameObject from its current Scene to a new Scene. It is required that the GameObject is at the root of its current Scene. |
| PerformRedo | Perform an Redo operation. |
| PerformUndo | Perform an Undo operation. |
| RecordObject | Records any changes done on the object after the RecordObject function. |
| RecordObjects | Records multiple undoable objects in a single call. This is the same as calling Undo.RecordObject multiple times. |
| RegisterChildrenOrderUndo | Stores a copy of the order of the object's children on the undo stack. |
| RegisterCompleteObjectUndo | Stores a copy of the object states on the undo stack. |
| RegisterCreatedObjectUndo | Registers an undo operation to undo the creation of an object. |
| RegisterFullObjectHierarchyUndo | Copy the states of a hierarchy of objects onto the undo stack. |
| RegisterImporterUndo | Copies the state of the importer for the given asset path. |
| RevertAllDownToGroup | Performs all undo operations up to the group index without storing a redo operation in the process. |
| RevertAllInCurrentGroup | Performs the last undo operation but does not record a redo operation. |
| SetCurrentGroupName | Set the name of the current undo group. |
| SetSiblingIndex | Sets the sibling index of transform and records an undo operation. |
| SetTransformParent | Sets the parent of transform to the new parent and records an undo operation. |

### Delegates

| Delegate | Description |
| --- | --- |
| PostprocessModifications | Delegate used for postprocessModifications. |
| UndoRedoCallback | Delegate used for undoRedoPerformed. |
| UndoRedoEventCallback | Delegate used for undoRedoEvent. |
| WillFlushUndoRecord | Delegate used for willFlushUndoRecord. |
