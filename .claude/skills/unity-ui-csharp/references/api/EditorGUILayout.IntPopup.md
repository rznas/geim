<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUILayout.IntPopup.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| label | Optional label in front of the field. |
| selectedValue | The value of the option the field shows. |
| displayedOptions | An array with the displayed options the user can choose from. |
| optionValues | An array with the values for each option. |
| style | Optional GUIStyle. |
| options | An optional list of layout options that specify extra layout properties. Any values passed in here will override settings defined by the `style`.  Additional resources: GUILayout.Width, GUILayout.Height, GUILayout.MinWidth, GUILayout.MaxWidth, GUILayout.MinHeight, GUILayout.MaxHeight, GUILayout.ExpandWidth, GUILayout.ExpandHeight. |

### Returns

**int** The value of the option that has been selected by the user.

### Description

Make an integer popup selection field.

Takes the currently selected integer as a parameter and returns the integer selected by the user.


 *Rescales the current selected GameObject.*

```csharp
// Simple Editor Script that lets you rescale the current selected GameObject.
using UnityEditor;
using UnityEngine;public class IntPopupExample : EditorWindow
{
    int   selectedSize = 1;
    string[] names = new string[] {"Normal", "Double", "Quadruple"};
    int[] sizes = {1, 2, 4};    [MenuItem("Examples/Int Popup usage")]
    static void Init()
    {
        EditorWindow window = GetWindow(typeof(IntPopupExample));
        window.Show();
    }    void OnGUI()
    {
        selectedSize = EditorGUILayout.IntPopup("Resize Scale: ", selectedSize, names, sizes);
        if (GUILayout.Button("Scale"))
            ReScale();
    }    void ReScale()
    {
        if (Selection.activeTransform)
            Selection.activeTransform.localScale =
                new Vector3(selectedSize, selectedSize, selectedSize);
        else
            Debug.LogError("No Object selected, please select an object to scale.");
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| property | The value of the option the field shows. |
| displayedOptions | An array with the displayed options the user can choose from. |
| optionValues | An array with the values for each option. |
| label | Optional label in front of the field. |
| options | An optional list of layout options that specify extra layout properties. Any values passed in here will override settings defined by the `style`.  Additional resources: GUILayout.Width, GUILayout.Height, GUILayout.MinWidth, GUILayout.MaxWidth, GUILayout.MinHeight, GUILayout.MaxHeight, GUILayout.ExpandWidth, GUILayout.ExpandHeight. |

### Description

Make an integer popup selection field.
