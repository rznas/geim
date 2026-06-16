<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUILayout.Popup.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| label | Optional label in front of the field. |
| selectedIndex | The index of the option the field shows. |
| displayedOptions | An array with the options shown in the popup. Use a slash to separate sub-items (ex. Menu/SubMenu). Use null or an empty string to add a separator. " |
| style | Optional GUIStyle. |
| options | An optional list of layout options that specify extra layout properties. Any values passed in here will override settings defined by the `style`.  Additional resources: GUILayout.Width, GUILayout.Height, GUILayout.MinWidth, GUILayout.MaxWidth, GUILayout.MinHeight, GUILayout.MaxHeight, GUILayout.ExpandWidth, GUILayout.ExpandHeight. |

### Returns

**int** The index of the option that has been selected by the user.

### Description

Make a generic popup selection field.

Takes the currently selected index as a parameter and returns the index selected by the user.


 *Create a primitive depending on the option selected.*

```csharp
using UnityEditor;
using UnityEngine;
using System.Collections;// Creates an instance of a primitive depending on the option selected by the user.
public class EditorGUILayoutPopup : EditorWindow
{
    public string[] options = new string[] {"Cube", "Sphere", "Plane"};
    public int index = 0;
    [MenuItem("Examples/Editor GUILayout Popup usage")]
    static void Init()
    {
        EditorWindow window = GetWindow(typeof(EditorGUILayoutPopup));
        window.Show();
    }    void OnGUI()
    {
        index = EditorGUILayout.Popup(index, options);
        if (GUILayout.Button("Create"))
            InstantiatePrimitive();
    }    void InstantiatePrimitive()
    {
        switch (index)
        {
            case 0:
                GameObject cube = GameObject.CreatePrimitive(PrimitiveType.Cube);
                cube.transform.position = Vector3.zero;
                break;
            case 1:
                GameObject sphere = GameObject.CreatePrimitive(PrimitiveType.Sphere);
                sphere.transform.position = Vector3.zero;
                break;
            case 2:
                GameObject plane = GameObject.CreatePrimitive(PrimitiveType.Plane);
                plane.transform.position = Vector3.zero;
                break;
            default:
                Debug.LogError("Unrecognized Option");
                break;
        }
    }
}
```
