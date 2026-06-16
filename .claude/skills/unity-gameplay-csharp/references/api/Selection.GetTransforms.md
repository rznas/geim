<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Selection.GetTransforms.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| mode | Options for refining the selection. Refer to SelectionMode for the available modes. |

### Returns

**Transform[]** The transforms of the selected objects determined by the `mode`.

### Description

Retrieves the transforms of selected objects.

Retrieves the transform of the current Editor selection after applying the provided SelectionMode flags. You can use this to iterate through relevant scene objects (such as editable transforms) and perform batch operations on them.

```csharp
using UnityEngine;
using UnityEditor;
class CreateParentForTransforms : ScriptableObject
{
    [MenuItem("Example/Create Parent For Selection _p")]
    static void MenuInsertParent()
    {
        Transform[] selection = Selection.GetTransforms(
            SelectionMode.TopLevel | SelectionMode.Editable);
        GameObject newParent = new GameObject("Parent");        foreach (Transform t in selection)
        {
            t.parent = newParent.transform;
        }
    }    // Disable the menu if there is nothing selected
    [MenuItem("Example/Create Parent For Selection _p", true)]
    static bool ValidateSelection()
    {
        return Selection.activeGameObject != null;
    }
}
```
