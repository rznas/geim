<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUILayout.IntSlider.html
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

**int** The value that has been set by the user.

### Description

Make a slider the user can drag to change an integer value between a min and a max.

*Create a grid of cloned Objects.*

```csharp
using UnityEditor;
using UnityEngine;// Simple editor script that lets you clone your object in a gridpublic class IntSliderExample : EditorWindow
{
    int cloneTimesX  = 1;
    int cloneTimesY  = 1;
    int cloneTimesZ  = 1;
    int spacing   = 2;    [MenuItem("Examples/Editor GUILayout IntSlider usage")]
    static void Init()
    {
        EditorWindow window = GetWindow(typeof(IntSliderExample));
        window.Show();
    }    void OnGUI()
    {
        cloneTimesX = EditorGUILayout.IntSlider(cloneTimesX, 1, 10);
        cloneTimesY = EditorGUILayout.IntSlider(cloneTimesY, 1, 10);
        cloneTimesZ = EditorGUILayout.IntSlider(cloneTimesZ, 1, 10);        if (GUILayout.Button("Duplicate object"))
            CloneSelected();
    }    void CloneSelected()
    {
        if (!Selection.activeGameObject)
        {
            Debug.LogError("Select a GameObject first");
            return;
        }        for (int i = 0; i < cloneTimesX; i++)
            for (int j = 0; j < cloneTimesY; j++)
                for (int k = 0; k < cloneTimesZ; k++)
                    Instantiate(Selection.activeGameObject, new Vector3(i, j, k) * spacing, Selection.activeGameObject.transform.rotation);
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

Make a slider the user can drag to change an integer value between a min and a max.
