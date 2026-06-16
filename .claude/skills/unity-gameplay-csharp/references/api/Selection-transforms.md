<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Selection-transforms.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the top level selection, excluding Prefabs.

This is the most common selection type when working with Scene objects.

```csharp
using UnityEngine;
using UnityEditor;class LookAtMainCamera : ScriptableObject
{
    [MenuItem("Example/Selection looks at Main Camera _l")]    static void Look()
    {
        var camera = Camera.main;        if (camera)
        {
            foreach (Transform transform in Selection.transforms)
            {
                Undo.RegisterUndo(transform, transform.name + " Looks at Main Camera");
                transform.LookAt(camera.transform);
            }
        }
    }    //The menu item will be disabled if nothing is selected.
    [MenuItem("Example/Selection looks at Main Camera _l", true)]
    static bool ValidateSelection()
    {
        return Selection.transforms.Length != 0;
    }
}
```
