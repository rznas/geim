<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Editor-hasUnsavedChanges.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This property specifies whether the Editor prompts the user to save or discard unsaved changes before the Inspector gets rebuilt.

Set hasUnsavedChanges to true to prompt the user to save or discard unsaved changes. This helps prevent them from accidentally losing unsaved work. When you use hasUnsavedChanges, you must also use EditorWindow.saveChangesMessage, and override the EditorWindow.SaveChanges and/or EditorWindow.DiscardChanges methods. When hasUnsavedChanges is enabled, the title bar and docked tabs update to indicate that the user needs to save their work. If the user closes the InspectorWindow, change selection or enters playmode without saving, a message box appears, and prompts them to either save, discard their changes, or cancel.

```csharp
using UnityEngine;
using UnityEditor;[CreateAssetMenu]
public class UnsavedChangesExampleSO : ScriptableObject
{}[CustomEditor(typeof(UnsavedChangesExampleSO))]
public class UnsavedChangesExampleEditor : UnityEditor.Editor
{
    void OnEnable()
    {
        saveChangesMessage = "This editor has unsaved changes. Would you like to save?";
    }    void OnInspectorGUI()
    {
        saveChangesMessage = EditorGUILayout.TextField(saveChangesMessage);        EditorGUILayout.LabelField(hasUnsavedChanges ? "I have changes!" : "No changes.", EditorStyles.wordWrappedLabel);
        EditorGUILayout.LabelField("Try to change selection.");        using (new EditorGUI.DisabledScope(hasUnsavedChanges))
        {
            if (GUILayout.Button("Create unsaved changes"))
                hasUnsavedChanges = true;
        }        using (new EditorGUI.DisabledScope(!hasUnsavedChanges))
        {
            if (GUILayout.Button("Save"))
                SaveChanges();            if (GUILayout.Button("Discard"))
                DiscardChanges();
        }
    }    public override void SaveChanges()
    {
        // Your custom save procedures here        Debug.Log($"{this} saved successfully!!!");
        base.SaveChanges();
    }    public override void DiscardChanges()
    {
        // Your custom procedures to discard changes        Debug.Log($"{this} discarded changes!!!");
        base.DiscardChanges();
    }
}
```
