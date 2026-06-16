<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Editor.SaveChanges.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Performs a save action on the contents of the editor.

Override SaveChanges() when using the Editor.hasUnsavedChanges property so that a user will not lose unsaved work when a window is closed. The Editor also calls this method internally when the user closes the window. Once called, the Editor prompts the user to save changes. When overring the method, be sure to call the base implementation or else the Editor.hasUnsavedChanges property is not reset to false. Note, if the Editor has multiple prompts to the user to save their changes, the Editor will call this method as part of a list of changes that need saving. Unity cancels the save process for all remaining prompts if this method throws an exception. In this case, you will find an error message with the exception message displayed in a dialog box.

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
    }    public override void OnInspectorGUI()
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
