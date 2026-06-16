<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Undo.RegisterChildrenOrderUndo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| objectToUndo | The object whose child order should be recorded on the undo stack. |
| name | The name of the undo operation. |

### Description

Stores a copy of the order of the object's children on the undo stack.

If the undo is performed, the order of the object's children will be restored to the recorded state.

```csharp
using UnityEngine;
using UnityEditor;public class UndoExamples
{
    [MenuItem("Undo Examples/RegisterChildrenOrderUndo")]
    static void Example()
    {
        var parent = new GameObject("Parent");
        for (int childIndex = 0; childIndex < 5; childIndex += 1)
        {
            var child = new GameObject($"Child{childIndex}");
            child.transform.parent = parent.transform;
        }        // Store the states of the parent object.
        Undo.RegisterChildrenOrderUndo(parent.transform, "Set as last sibling");
        parent.transform.GetChild(0).SetAsLastSibling();        // If you choose "Edit->Undo Set as last sibling" from the main menu now, the order of the children will be restored.
    }
}
```
