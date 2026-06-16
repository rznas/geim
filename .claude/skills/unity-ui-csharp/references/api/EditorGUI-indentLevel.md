<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUI-indentLevel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The indent level of the field labels.

EditorGUILayout.LabelField will display the string given as an argument. This string can be displayed at a horizontal position, and the position changed by indentLevel. As indentLevel increases the labels will move right. Decreasing indentLevel will move labels to the left.
 
 *Shows info of the selected object.*

```csharp
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;public class EditorGUIIndent : EditorWindow
{
    [MenuItem("Examples/indentLevel demo")]
    static void Init()
    {
        EditorWindow window = GetWindow(typeof(EditorGUIIndent));
        window.position = new Rect(100, 100, 300, 150);
        window.Show();
    }    void OnGUI()
    {
        Transform obj = Selection.activeTransform;
        EditorGUILayout.LabelField("Name:", obj ? obj.name : "Select an Object");        if (obj)
        {
            // Indent further the area of position and rotation
            EditorGUI.indentLevel++;
            EditorGUILayout.LabelField("Position:", obj.position.ToString());
            EditorGUILayout.LabelField("Rotation:", obj.rotation.eulerAngles.ToString());            // Indent further again the area of rotation values
            EditorGUI.indentLevel++;
            EditorGUILayout.LabelField("X:", obj.rotation.x.ToString());
            EditorGUILayout.LabelField("Y:", obj.rotation.y.ToString());
            EditorGUILayout.LabelField("Z:", obj.rotation.z.ToString());
            EditorGUILayout.LabelField("W:", obj.rotation.w.ToString());            // End of inner area
            EditorGUI.indentLevel--;
            EditorGUILayout.LabelField("Scale:", obj.localScale.ToString());            // End of area
            EditorGUI.indentLevel--;
        }
    }
}
```

To maximize future compatibility, do not make assumptions about what a specific indent level means, but instead just increase or decrease by one around blocks of controls that need to be more indented, as in the example above.
