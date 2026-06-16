<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUILayout.FloatField.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| label | Optional label to display in front of the float field. |
| value | The value to edit. |
| style | Optional GUIStyle. |
| options | An optional list of layout options that specify extra layout properties. Any values passed in here will override settings defined by the `style`.  Additional resources: GUILayout.Width, GUILayout.Height, GUILayout.MinWidth, GUILayout.MaxWidth, GUILayout.MinHeight, GUILayout.MaxHeight, GUILayout.ExpandWidth, GUILayout.ExpandHeight. |

### Returns

**float** The value entered by the user.

### Description

Make a text field for entering float values.

*Multiply the scale of the selected GameObject.*

```csharp
using UnityEngine;
using UnityEditor;// Editor Script that multiplies the scale of the current selected GameObjectpublic class FloatFieldExample : EditorWindow
{
    float sizeMultiplier = 1.0f;    [MenuItem("Examples/Scale selected Object")]
    static void Init()
    {
        var window = (FloatFieldExample)GetWindow(typeof(FloatFieldExample));
        window.Show();
    }    void OnGUI()
    {
        sizeMultiplier = EditorGUILayout.FloatField("Increase scale by:", sizeMultiplier);        if (GUILayout.Button("Scale"))
        {
            if (!Selection.activeGameObject)
            {
                Debug.Log("Select a GameObject first");
                return;
            }            Selection.activeTransform.localScale =
                Selection.activeTransform.localScale * sizeMultiplier;
        }
    }
}
```
