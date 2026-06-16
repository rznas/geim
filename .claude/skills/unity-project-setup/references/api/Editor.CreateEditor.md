<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Editor.CreateEditor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| objects | All objects must be of the same type. |

### Description

Make a custom editor for `targetObject` or `targetObjects`.

By default, an appropriate editor with a matching CustomEditor attribute is created. If an editorType is specified, an editor of that type is created instead. Use this if you have created multiple custom editors, and each editor shows different properties of the object. Returns NULL if `objects` are of different types or if no approprate editor was found. Editors created using this function have to be destroyed explicitly, using either Object.Destroy or Object.DestroyImmediate.

 Consider a script WaypointPathEditor for editing the Transforms of a wayPoint array.

```csharp
using UnityEditor;
using UnityEngine;
using System.Collections;
[CustomEditor(typeof(WaypointPath))]
public class WaypointPathEditor : Editor
{
    Editor currentTransformEditor;
    Transform selectedTransform;
    string[] optionsList;
    int index = 0;
    WaypointPath myWayPath;    void GetWaypoints()
    {
        myWayPath = target as WaypointPath;        if (myWayPath.wayPointArray != null)
        {
            optionsList = new string[myWayPath.wayPointArray.Length];            for (int i = 0; i < optionsList.Length; i++)
            {
                Transform wayPoint = myWayPath.wayPointArray[i];                if (wayPoint != null)
                    optionsList[i] = wayPoint.name;
                else
                    optionsList[i] = $"Empty waypoint {(i + 1)}";
            }
        }
    }    public override void OnInspectorGUI()
    {
        GetWaypoints ();
        DrawDefaultInspector ();
        EditorGUILayout.Space ();
        EditorGUI.BeginChangeCheck ();        if (optionsList != null)
            index = EditorGUILayout.Popup ("Select Waypoint", index, optionsList);        if (EditorGUI.EndChangeCheck())
        {
            Editor tmpEditor = null;            if (index < myWayPath.wayPointArray.Length)
            {
                selectedTransform = myWayPath.wayPointArray[index];                //Creates an Editor for selected Component from a Popup
                tmpEditor = Editor.CreateEditor(selectedTransform);
            } else {
                selectedTransform = null;
            }            // If there isn't a Transform currently selected then destroy the existing editor
            if (currentTransformEditor != null)
            {
                DestroyImmediate (currentTransformEditor);
            }            currentTransformEditor = tmpEditor;
        }        // Shows the created Editor beneath CustomEditor
        if (currentTransformEditor != null && selectedTransform != null)
        {
            currentTransformEditor.OnInspectorGUI ();
        }
    }
}
```

The script attached to a waypath GameObject:

```csharp
using UnityEngine;
using System.Collections;// Note: this is not an editor script.
public class WaypointPath : MonoBehaviour
{
    public Transform[] wayPointArray;
}
```
