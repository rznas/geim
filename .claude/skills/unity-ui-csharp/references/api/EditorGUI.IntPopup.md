<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUI.IntPopup.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Rectangle on the screen to use for the field. |
| label | Optional label in front of the field. |
| selectedValue | The value of the option the field shows. |
| displayedOptions | An array with the displayed options the user can choose from. |
| optionValues | An array with the values for each option. If optionValues a direct mapping of selectedValue to displayedOptions is assumed. |
| style | Optional GUIStyle. |

### Returns

**int** The value of the option that has been selected by the user.

### Description

Makes an integer popup selection field.

Takes the currently selected integer as a parameter and returns the integer selected by the user.


 *Int Popup in an Editor Window.*

```csharp
using UnityEngine;
using UnityEditor;
// Multiplies the scale of the selected transform.class EditorGUIIntPopup : EditorWindow
{
    int selectedSize = 1;
    string[] names = { "Double", "Triple", "Quadruple" };
    int[] sizes = { 2, 3, 4 };    [MenuItem("Examples/Editor GUI Int Popup usage")]
    static void Init()
    {
        EditorWindow window = GetWindow<EditorGUIIntPopup>();
        window.position = new Rect(0, 0, 180, 60);
        window.Show();
    }    void OnGUI()
    {
        selectedSize = EditorGUI.IntPopup(
            new Rect(3, 3, position.width - 6, 20),
            "Size:",
            selectedSize,
            names,
            sizes);        if (GUI.Button(new Rect(0, 25, position.width, position.height - 27), "Modify"))
        {
            Rescale();
        }
    }    void Rescale()
    {
        if (Selection.activeTransform)
        {
            Selection.activeTransform.localScale *= selectedSize;
        }
        else
        {
            Debug.LogError("No Object selected, please select an object to scale.");
        }
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| position | Rectangle on the screen to use for the field. |
| property | The SerializedProperty to use for the control. |
| displayedOptions | An array with the displayed options the user can choose from. |
| optionValues | An array with the values for each option. If optionValues a direct mapping of selectedValue to displayedOptions is assumed. |
| label | Optional label in front of the field. |

### Description
