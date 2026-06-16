<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Selection-activeGameObject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the active game object. (The one shown in the inspector).

It will also return game objects that might be Prefabs or non-modifiable objects.

```csharp
using UnityEngine;
using UnityEditor;class Example : EditorWindow
{
    // Rotates the selected Game Object +45 degrees if the user presses 'g'
    // or -45 degrees if the user presses 'Shift + g'
    // If no object is selected, the Menus are grayed out.    [MenuItem("Example/Rotate Green +45 _g")]
    static void RotateGreenPlus45()
    {
        GameObject obj = Selection.activeGameObject;
        obj.transform.Rotate(Vector3.up * 45);
    }    [MenuItem("Example/Rotate Green +45 _g", true)]
    static bool ValidatePlus45()
    {
        return Selection.activeGameObject != null;
    }    [MenuItem("Example/Rotate green -45 #g")]
    static void RotateGreenMinus45()
    {
        GameObject obj = Selection.activeGameObject;
        obj.transform.Rotate(Vector3.down * 45);
    }    [MenuItem("Example/Rotate green -45 #g", true)]
    static bool ValidateMinus45()
    {
        return Selection.activeGameObject != null;
    }
}
```
