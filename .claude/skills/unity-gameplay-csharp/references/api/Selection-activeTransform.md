<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Selection-activeTransform.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the active transform. (The one shown in the inspector).

This never returns Prefabs or non-modifiable objects.

```csharp
using UnityEngine;
using UnityEditor;class Example : EditorWindow
{
    class SelectionActiveTransform : ScriptableObject
    {
        [MenuItem("Example/Duplicate at Origin _d")]
        static void DuplicateSelected()
        {
            Instantiate(Selection.activeTransform, Vector3.zero, Quaternion.identity);
        }
    }    //The menu item will be disabled if nothing is selected.
    [MenuItem("Example/Duplicate at Origin _d", true)]
    static bool ValidateSelection()
    {
        return Selection.activeTransform != null;
    }
}
```
