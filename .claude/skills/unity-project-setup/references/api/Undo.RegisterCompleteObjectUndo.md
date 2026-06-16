<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Undo.RegisterCompleteObjectUndo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| objectToUndo | The object whose state changes need to be undone. |
| name | The name of the undo operation. |

### Description

Stores a copy of the object states on the undo stack.

If the undo is performed, any changes made to the object after this function is called will be undone, and the object will be restored to the recorded state. 

Transform parent change, AddComponent, and object destruction can not be restored with this function, for that you should use the dedicated functions. See Undo.SetTransformParent, Undo.AddComponent, Undo.DestroyObjectImmediate.

If the object is part of the current Scene (e.g. a game object in the Hierarchy or a component attached to such game object), calling this function will immediately mark the Scene as modified, even if you don't actually change the states of the object afterwards.

```csharp
using UnityEngine;
using UnityEditor;public class UndoExamples
{
    [MenuItem("Undo Examples/RegisterCompleteObjectUndo")]
    static void Example()
    {
        GameObject player = new GameObject("Player");        // Store the states of the player object.
        Undo.RegisterCompleteObjectUndo(player, "Player name change");        player.name = "New Player";        // If you choose "Edit->Undo Player name change" from the main menu now, the name of the object will be restored to "Player".
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| objectsToUndo | An array of objects whose state changes need to be undone. |
| name | The name of the undo operation. |

### Description

This is equivalent to calling the first overload mutiple times, save for the fact that only one undo operation will be generated for this one.
