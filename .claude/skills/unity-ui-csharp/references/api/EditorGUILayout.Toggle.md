<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUILayout.Toggle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| label | Optional label in front of the toggle. |
| value | The shown state of the toggle. |
| style | Optional GUIStyle. |
| options | An optional list of layout options that specify extra layout properties. Any values passed in here will override settings defined by the `style`.   Additional resources: GUILayout.Width, GUILayout.Height, GUILayout.MinWidth, GUILayout.MaxWidth, GUILayout.MinHeight, GUILayout.MaxHeight, GUILayout.ExpandWidth, GUILayout.ExpandHeight. |

### Returns

**bool** The selected state of the toggle.

### Description

Make a toggle.

*Show a button if the toggle control is selected.*

```csharp
using UnityEngine;
using UnityEditor;public class EditorGUILayoutToggle : UnityEditor.EditorWindow
{
    bool showBtn = true;    [MenuItem("Examples/Editor GUILayout Toggle Usage")]
    static void Init()
    {
        EditorGUILayoutToggle window = (EditorGUILayoutToggle)EditorWindow.GetWindow(typeof(EditorGUILayoutToggle), true, "My Empty Window");
        window.Show();
    }    void OnGUI()
    {
        showBtn = EditorGUILayout.Toggle("Show Button", showBtn);
        if (showBtn)
            if (GUILayout.Button("Close"))
                this.Close();
    }
}
```
