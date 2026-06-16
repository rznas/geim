<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Undo.RegisterCreatedObjectUndo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| objectToUndo | The newly created object. This object is destroyed when the undo operation is performed. When the value is a GameObject, Unity registers the GameObject and its child GameObjects, but not sibling or parent GameObjects. |
| name | The name of the action to undo. Use this string to provide a short description of the action to be undone. For **Undo** or **Redo** items in the **Edit** menu, Unity adds "Undo" or "Redo" to the string that you provide. For example, if you provide the string "Create GameObject", the Unity Editor displays the menu item **Edit** > **Undo Create GameObject**. |

### Description

Registers an undo operation to undo the creation of an object.

This method registers the creation of an object to the undo stack so that users can undo a create object action. Use this method each time you define an action that creates an object, for example, inside a custom Editor or menu item. Unity updates the undo action in the **Edit** menu with the name of the undo operation. When the user performs the undo action, Unity destroys the object.

**Note:** The undo process destroys objects in the same way as Object.Destroy, but with no delay.

When you create and modify an object at the same time, use the following workflow to ensure that Undo.RegisterCreatedObjectUndo saves all updates to the object:

1. Create the object.
2. Register the object as created with `Undo.RegisterCreatedObjectUndo`.
3. Register the object with Undo.RegisterCompleteObjectUndo so that the Editor records changes to the object. If the object has any child GameObjects, register it with Undo.RegisterFullObjectHierarchyUndo instead.
4. Update the object.

If you do not follow this workflow, `Undo.RegisterCreatedObjectUndo` might not save any updates to the object other than object creation.

When you register a new object with `Undo.RegisterCreatedObjectUndo`, Unity registers any changes to objects that are currently recorded by Undo.RecordObject and then stops recording. This means that after you register a new object, Unity does not record any subsequent changes to any other objects that `Undo.RecordObject` was already recording.

When Unity is already recording changes to existing objects with `Undo.RecordObject` and you want to register newly created objects, it is best practice to follow this workflow:

1. Complete any changes you want to make to objects that `Undo.RecordObject` is recording. Unity calls Undo.FlushUndoRecordObjects automatically.
2. Register newly created objects with `Undo.RegisterCreatedObjectUndo`.

If you do not follow this workflow, Unity might not store the state of the recorded objects on the undo stack correctly.

The following example shows how to create and modify a GameObject with a child as an operation that can be undone in a single undo step.

```csharp
using UnityEditor;
using UnityEngine;class CreateGameObjectMenu
{
    [MenuItem("Example/Create GameObject")]
    static void CreateGameObject()
    {
        // Create new undo group
        Undo.IncrementCurrentGroup();        // Create GameObject hierarchy
        GameObject go = new GameObject("my GameObject");
        Undo.RegisterCreatedObjectUndo(go, "Create my GameObject");
        GameObject child = new GameObject();
        Undo.RegisterCreatedObjectUndo(child, "Create child");
        Undo.SetTransformParent(child.transform, go.transform, "Modify parent");        // Move GameObject hierarchy
        Undo.RegisterFullObjectHierarchyUndo(go, "Update my GameObject position");
        go.transform.position = new Vector3(5, 5, 5);        // Name undo group
        Undo.SetCurrentGroupName("Create and Reposition GameObject with Child");
    }
}
```

**Note:** This operation cannot be performed when isProcessing is `true`.
