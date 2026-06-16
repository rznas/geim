<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Undo.GetCurrentGroup.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**int** The index of the current undo group.

### Description

Unity automatically groups undo operations by the current group index.

The current group index is automatically increased on mouse down, clicking on menu items and other operations.

Additional resources: Undo.RevertAllDownToGroup, Undo.CollapseUndoOperations.

```csharp
using UnityEditor;
using UnityEngine;

public class ResetPositionForSelectedGameObjectsExample : MonoBehaviour
{
    [MenuItem("MyMenu/Reset Positions of Selected GameObjects")]
    static void ResetPositionForSelectedGameObjects()
    {
        Undo.SetCurrentGroupName("Zero out selected gameObjects");
        int group = Undo.GetCurrentGroup();

        Undo.RecordObjects(Selection.transforms, "transform selected objects");

        foreach (Transform t in Selection.transforms)
        {
            t.position = Vector3.zero;
        }

        Undo.CollapseUndoOperations(group);
    }
}
```
