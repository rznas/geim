<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Editor.HasFrameBounds.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Validates whether custom bounds can be calculated for this Editor.

Use this to validate if Editor.OnGetFrameBounds should be called for this window. The Scene view calls `HasFrameBounds` and `OnGetFrameBounds` when the Frame action is invoked. The Frame action can be called from anywhere, but it is commonly called when you press the F key to frame the selected GameObject.

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
