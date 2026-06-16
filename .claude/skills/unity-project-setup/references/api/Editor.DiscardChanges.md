<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Editor.DiscardChanges.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Discards unsaved changes to the contents of the editor.

Override DiscardChanges() to discard unsaved work when an editor is closed. When you override this method, call the base implementation. Otherwise the Editor.hasUnsavedChanges property is not reset to false. Note, if the Editor has multiple prompts to the user to discard their changes, the Editor will call this method as part of a list of changes that need to be discarded. If this method throws an exception, Unity cancels the discard process for all remaining prompts. In that case, a dialog box displays an error message with the exception message.

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
