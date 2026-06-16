<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Undo.SetCurrentGroupName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | New name of the current undo group. |

### Description

Set the name of the current undo group.

Setting a name manually will override an implicitly generated name for the group.

Additional resources: Undo.GetCurrentGroupName.

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
