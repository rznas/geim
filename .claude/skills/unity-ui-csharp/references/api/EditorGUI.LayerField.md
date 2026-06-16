<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUI.LayerField.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Rectangle on the screen to use for the field. |
| label | Optional label in front of the field. |
| layer | The layer shown in the field. |
| style | Optional GUIStyle. |

### Returns

**int** The layer selected by the user.

### Description

Makes a layer selection field.

*Layer field in an Editor Window.*

```csharp
using UnityEngine;
using UnityEditor;
// Change the Tag and/or the layer of the selected GameObjects.class EditorGUITagLayerField : EditorWindow
{
    string selectedTag = "";
    int selectedLayer = 0;    [MenuItem("Examples/Tag - Layer for Selection")]
    static void Init()
    {
        var window = GetWindow<EditorGUITagLayerField>();
        window.position = new Rect(0, 0, 350, 70);
        window.Show();
    }    void OnGUI()
    {
        selectedTag = EditorGUI.TagField(
            new Rect(3, 3, position.width / 2 - 6, 20),
            "New Tag:",
            selectedTag);        selectedLayer = EditorGUI.LayerField(
            new Rect(position.width / 2 + 3, 3, position.width / 2 - 6, 20),
            "New Layer:",
            selectedLayer);        if (Selection.activeGameObject)
        {
            if (GUI.Button(new Rect(3, 25, 90, 17), "Change Tags"))
            {
                foreach (GameObject go in Selection.gameObjects)
                {
                    go.tag = selectedTag;
                }
            }            if (GUI.Button(new Rect(position.width - 96, 25, 90, 17), "Change Layers"))
            {
                foreach (GameObject go in Selection.gameObjects)
                {
                    go.layer = selectedLayer;
                }
            }
        }
    }    void OnInspectorUpdate()
    {
        Repaint();
    }
}
```
