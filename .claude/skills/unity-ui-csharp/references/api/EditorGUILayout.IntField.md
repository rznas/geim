<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUILayout.IntField.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| label | Optional label to display in front of the int field. |
| value | The value to edit. |
| style | Optional GUIStyle. |
| options | An optional list of layout options that specify extra layout properties. Any values passed in here will override settings defined by the `style`.  Additional resources: GUILayout.Width, GUILayout.Height, GUILayout.MinWidth, GUILayout.MaxWidth, GUILayout.MinHeight, GUILayout.MaxHeight, GUILayout.ExpandWidth, GUILayout.ExpandHeight. |

### Returns

**int** The value entered by the user.

### Description

Make a text field for entering integers.

*Clone the Selected object a number of times.*

```csharp
// Editor Script that clones the selected GameObject a number of times.using UnityEditor;
using UnityEngine;public class IntFieldExample : EditorWindow
{
    static int clones = 1;    [MenuItem("Examples/Clone Object")]
    static void Init()
    {
        EditorWindow window = GetWindow(typeof(IntFieldExample));
        window.Show();
    }    void OnGUI()
    {
        clones = EditorGUILayout.IntField("Number of clones:", clones);        if (GUILayout.Button("Clone!"))
        {
            if (!Selection.activeGameObject)
            {
                Debug.Log("Select a GameObject first");
                return;
            }            for (var i = 0; i < clones; i++)
                Instantiate(Selection.activeGameObject, Vector3.zero, Quaternion.identity);
        }
    }
}
```
