<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUI.MixedValueScope.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Creates a group of controls that can visually represent a mixed value.

To configure a group of controls that can show a dash (-) if selected objects have different values, add `EditorGUI.MixedValueScope` before the group and set `newMixedValue` to true.

```csharp
using UnityEditor;
using UnityEngine;[CanEditMultipleObjects]
[CustomEditor(typeof(MixedValueComponentTest))]
public class MixedValueComponentTestEditor : Editor
{
    public override void OnInspectorGUI()
    {
        SerializedProperty serializedPropertyMyInt = serializedObject.FindProperty("MyInt");
        using (new EditorGUI.MixedValueScope(serializedPropertyMyInt.hasMultipleDifferentValues))
        {
            EditorGUI.BeginChangeCheck();
            int newValue = EditorGUILayout.IntField("My Int", serializedPropertyMyInt.intValue);
            if (EditorGUI.EndChangeCheck())
                serializedPropertyMyInt.intValue = newValue;
        }
        serializedObject.ApplyModifiedProperties();
    }
}public class MixedValueComponentTest : MonoBehaviour
{
    public int MyInt;
}
```

Additional resources: EditorGUI.showMixedValue.

### Constructors

| Constructor | Description |
| --- | --- |
| EditorGUI.MixedValueScope | Creates a new MixedValueScope that determines the start of the group of mixed value controls. |
