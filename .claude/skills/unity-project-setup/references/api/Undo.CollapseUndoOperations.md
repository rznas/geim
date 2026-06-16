<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Undo.CollapseUndoOperations.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| groupIndex | The group index to collapse undo operations to. |

### Description

Collapses all undo operations down to group index together into one step.

The current group index automatically increases on mouse down, by clicking on menu items, and other operations. This method collapses all undo operations with group indices above the provided group index to that group index. This is used by the color picker to combine all color modifications into a single step once the color picker is closed, while they are seperate operations when the color picker is still open.

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
