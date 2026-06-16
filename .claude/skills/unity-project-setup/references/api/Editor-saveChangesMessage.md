<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Editor-saveChangesMessage.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The message that displays to the user if they are prompted to save.

Set saveChangesMessage in a derived class to prevent users from accidentally losing unsaved work. For saveChangesMessage to work, you must use it with Editor.hasUnsavedChanges and override the Editor.SaveChanges method. This message shows exactly as you have written it. This message presents to users who have unsaved changes, if they attempt to close the Inspector, change Selection or enter Playmode. The save changes message might combine with other messages from other editors. This occurs if there are multiple editors that have unsaved changes.

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
