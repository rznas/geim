<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Selection.GetFiltered.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| type | Only objects of this type will be retrieved. |
| mode | Further options to refine the selection. |

### Description

Returns the current selection filtered by type and mode.

For a selected GameObject that has multiple Components of `type`, only the first one will be included in the results. 
 If `type` is a subclass of Component or GameObject the full SelectionMode is supported. 
 If `type` does not subclass from Component or GameObject (eg. Mesh or ScriptableObject) only SelectionMode.ExcludePrefab and SelectionMode.Editable are supported.

```csharp
using UnityEngine;
using UnityEditor;class ToggleActive : ScriptableObject
{
    [MenuItem("Example/Toggle Active of Selected %i")]
    static void DoToggle()
    {
        Object[] activeGOs =
            Selection.GetFiltered(
                typeof(GameObject),
                SelectionMode.Editable | SelectionMode.TopLevel);        foreach (GameObject obj in activeGOs)
        {
            obj.SetActive(!obj.activeSelf);
        }
    }
}
```
