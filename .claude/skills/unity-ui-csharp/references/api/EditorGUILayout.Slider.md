<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUILayout.Slider.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| label | Optional label in front of the slider. |
| value | The value the slider shows. This determines the position of the draggable thumb. |
| leftValue | The value at the left end of the slider. |
| rightValue | The value at the right end of the slider. |
| options | An optional list of layout options that specify extra layout properties. Any values passed in here will override settings defined by the `style`.  Additional resources: GUILayout.Width, GUILayout.Height, GUILayout.MinWidth, GUILayout.MaxWidth, GUILayout.MinHeight, GUILayout.MaxHeight, GUILayout.ExpandWidth, GUILayout.ExpandHeight. |

### Returns

**float** The value that has been set by the user.

### Description

Make a slider the user can drag to change a value between a min and a max.

*Scale the selected object between a range.*

```csharp
// Editor script that lets you scale the selected GameObject between 1 and 100using UnityEditor;
using UnityEngine;public class EditorGUILayoutSlider : EditorWindow
{
    static float scale = 0.0f;    [MenuItem("Examples/Editor GUILayout Slider usage")]
    static void Init()
    {
        EditorWindow window = GetWindow(typeof(EditorGUILayoutSlider));
        window.Show();
    }    void OnGUI()
    {
        scale = EditorGUILayout.Slider(scale, 1, 100);
    }    void OnInspectorUpdate()
    {
        if (Selection.activeTransform)
            Selection.activeTransform.localScale = new Vector3(scale, scale, scale);
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| label | Optional label in front of the slider. |
| property | The value the slider shows. This determines the position of the draggable thumb. |
| leftValue | The value at the left end of the slider. |
| rightValue | The value at the right end of the slider. |
| options | An optional list of layout options that specify extra layout properties. Any values passed in here will override settings defined by the `style`.  Additional resources: GUILayout.Width, GUILayout.Height, GUILayout.MinWidth, GUILayout.MaxWidth, GUILayout.MinHeight, GUILayout.MaxHeight, GUILayout.ExpandWidth, GUILayout.ExpandHeight. |

### Description

Make a slider the user can drag to change a value between a min and a max.
