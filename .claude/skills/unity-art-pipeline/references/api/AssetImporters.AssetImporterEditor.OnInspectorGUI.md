<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporters.AssetImporterEditor.OnInspectorGUI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Override this method to create your own Inpsector GUI for a ScriptedImporter.

For the OnInspectorGUI Undo/Redo and cancel feature to work in the Inspector, you must either call ApplyRevertGUI or override needsApplyRevert to return false.

Example of an InspectorGUI using ApplyRevertGUI:

```csharp
using UnityEditor;
using UnityEditor.AssetImporters;
using UnityEngine;public class CustomInspector : ScriptedImporterEditor
{
    SerializedProperty myProperty;    public override void OnEnable()
    {
        base.OnEnable();        myProperty = serializedObject.FindProperty("m_MyProperty");
    }    public override void OnInspectorGUI()
    {
        serializedObject.Update();        EditorGUILayout.PropertyField(myProperty);        serializedObject.ApplyModifiedProperties();        ApplyRevertGUI();
    }
}
```

Example of an InspectorGUI where the user cannot change anything and does not require an ApplyRevertGUI:

```csharp
using UnityEditor;
using UnityEditor.AssetImporters;
using UnityEngine;public class CustomInspector : ScriptedImporterEditor
{
    SerializedProperty myProperty;    public override void OnEnable()
    {
        base.OnEnable();        myProperty = serializedObject.FindProperty("m_MyProperty");
    }    protected override bool needsApplyRevert => false;    public override void OnInspectorGUI()
    {
        serializedObject.Update();        EditorGUILayout.LabelField(myProperty.displayName, myProperty.stringValue);        serializedObject.ApplyModifiedProperties();
    }
}
```
