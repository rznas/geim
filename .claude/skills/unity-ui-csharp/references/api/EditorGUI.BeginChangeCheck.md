<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUI.BeginChangeCheck.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Starts a new code block to check for GUI changes.

Use this in combination with EditorGUI.EndChangeCheck to create a code block that checks if the GUI state changed for just the controls contained in that block.
 This method is different from GUI.changed, which returns true for *any* changes to the GUI state. BeginChangeCheck() limits the check to a specific set of controls.

```csharp
using UnityEditor;public class ExampleWindow : EditorWindow
{
    float sliderValue = 0;
    string labelText = "-";    [MenuItem("Window/Example Window")]
    static void Init()
    {
        var example = (ExampleWindow)EditorWindow.GetWindow(typeof(ExampleWindow));
        example.Show();
    }    void OnGUI()
    {
        EditorGUILayout.LabelField("New value", labelText);        // Start a code block to check for GUI changes
        EditorGUI.BeginChangeCheck();        sliderValue = EditorGUILayout.Slider(sliderValue, 0, 1);        // End the code block and update the label if a change occurs.
        // Note: This indicates user interaction with the slider but does not guarantee that a SerializedProperty has changed.
        // To have the updated value, call serializedObject.ApplyModifiedProperties().
        if (EditorGUI.EndChangeCheck())
        {
            labelText = sliderValue.ToString();
        }
    }
}
```
