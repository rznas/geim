<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Editor.OnGetFrameBounds.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gets custom bounds for the target of this editor.

Use this method to retrieve the Bounds for a custom window derived from the Editor class. This method is always used in conjunction with Editor.HasFrameBounds which either returns true or false, depending on the implementation.

```csharp
using UnityEngine;
using UnityEditor;// This example traverses all bones in the hierarchy and calculates bounds for the entire object
public class GameObjectEditorWindow: Editor
{
    private bool HasFrameBounds()
    {
        // the result of this function depends on implementation
        // it will most likely be used to evaluate whether bounds
        // can exist for the targets of this Editor Window
        return Selection.objects.Length > 0;
    }    public Bounds OnGetFrameBounds()
    {
        Transform bone = Selection.activeTransform;
        Bounds bounds = new Bounds(bone.position, new Vector3(0, 0, 0));
        foreach (Transform child in bone)
            bounds.Encapsulate(child.position);        if (bone.parent) bounds.Encapsulate(bone.parent.position);        return bounds;
    }
}
```
