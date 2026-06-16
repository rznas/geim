<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Undo.RecordObject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| objectToUndo | The reference to the object that you will be modifying. |
| name | The title of the action to appear in the undo history (i.e. visible in the undo menu). |

### Description

Records any changes done on the object after the RecordObject function.

Almost all property changes can be recorded with this function. The transform parent, AddComponent, object destruction can not be recorded with this function, for that you should use the dedicated functions.

Internally this creates a temporary copy of the object's state. At the end of the frame Unity diffs the state and detects what has changed. The changed properties are recorded on the undo stack. If nothing has changed (Binary exact comparison is used for all properties), no undo operations are stored on the stack.

**Important:** To correctly handle instances where *objectToUndo* is an instance of a Prefab, PrefabUtility.RecordPrefabInstancePropertyModifications must be called after RecordObject.

This is an example of an editor script which allows you to change an effect radius variable. The Undo state is recorded, allowing you to revert the change using the undo system.

```csharp
//Name this script "EffectRadiusEditor"
using UnityEngine;
using UnityEditor;[CustomEditor(typeof(EffectRadius))]
public class EffectRadiusEditor : Editor
{
    public void OnSceneGUI()
    {
        EffectRadius t = (target as EffectRadius);        // The Begin and EndChangeChecks check for changes in the GUI state. This is not required for
        // Undo.RecordObject. Undo.RecordObject only registers changes to the target
        // after the call to Undo.RecordObject.
        EditorGUI.BeginChangeCheck();
        float areaOfEffect = Handles.RadiusHandle(Quaternion.identity, t.transform.position, t.areaOfEffect);
        if (EditorGUI.EndChangeCheck())
        {
            Undo.RecordObject(target, "Changed Area Of Effect");
            t.areaOfEffect = areaOfEffect;
        }
    }
}
```

Place this script on a GameObject to see the area of effect handle, and change the value using the gizmo in the Scene view.

```csharp
//Name this script "EffectRadius"
using UnityEngine;
using System.Collections;public class EffectRadius : MonoBehaviour
{
    public float areaOfEffect = 1;
}
```

Additional resources: Undo.RecordObjects.
