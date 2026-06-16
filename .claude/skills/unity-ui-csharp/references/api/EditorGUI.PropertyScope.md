<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUI.PropertyScope.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Create a Property wrapper, useful for making regular GUI controls work with SerializedProperty.

Most EditorGUI and EditorGUILayout GUI controls already have overloads that work with SerializedProperty. However, for GUI controls that don't handle SerializedProperty you can wrap them inside BeginProperty and EndProperty as shown in the example below. You can use this for your own custom GUI controls too.

BeginProperty and EndProperty automatically handle default labels, bold font for Prefab overrides, revert to Prefab right click menu, and setting showMixedValue to true if the values of the property are different when multi-object editing.

```csharp
using UnityEngine;
using UnityEditor;public class ExampleClass : MonoBehaviour
{
    // A slider function that takes a SerializedProperty
    void Slider(Rect position, SerializedProperty prop, float leftValue, float rightValue, GUIContent label)
    {
        using (var scope = new EditorGUI.PropertyScope(position, label, prop))
        {
            label = scope.content;
            EditorGUI.BeginChangeCheck();
            var newValue = EditorGUI.Slider(position, label, prop.floatValue, leftValue, rightValue);
            // Only assign the value back if it was actually changed by the user.
            // Otherwise a single value will be assigned to all objects when multi-object editing,
            // even when the user didn't touch the control.
            if (EditorGUI.EndChangeCheck())
                prop.floatValue = newValue;
        }
    }
}
```

Additional resources: BeginProperty.

### Properties

| Property | Description |
| --- | --- |
| content | The actual label to use for the control. |

### Constructors

| Constructor | Description |
| --- | --- |
| EditorGUI.PropertyScope | Create a new PropertyScope and begin the corresponding property. |
