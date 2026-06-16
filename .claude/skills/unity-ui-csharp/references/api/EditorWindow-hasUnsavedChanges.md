<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorWindow-hasUnsavedChanges.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This property specifies whether the Editor prompts the user to save or discard unsaved changes before the window closes.

Set hasUnsavedChanges to true to prompt the user to save or discard unsaved changes. This helps prevent them from accidentally losing unsaved work. When you use hasUnsavedChanges, you must also use EditorWindow.saveChangesMessage, and override the EditorWindow.SaveChanges and/or EditorWindow.DiscardChanges methods. When hasUnsavedChanges is enabled, the title bar and docked tabs update to indicate that the user needs to save their work. If the user closes the window without saving, a message box appears, and prompts them to either save, discard their changes, or cancel.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEngine.UIElements;

public class UnsavedChangesExampleWindow : EditorWindow
{
    [MenuItem("Examples/Editor Window With Unsaved Changes")]
    static void Init()
    {
        UnsavedChangesExampleWindow window = (UnsavedChangesExampleWindow)EditorWindow.GetWindowWithRect(typeof(UnsavedChangesExampleWindow), new Rect(100, 100, 400, 400));

        window.saveChangesMessage = "This window has unsaved changes. Would you like to save?";
        window.Show();
    }

    void CreateGUI()
    {
        var label = new Label();
        label.text = hasUnsavedChanges ? "I have changes!" : "No changes.";
        rootVisualElement.Add(label);

        var buttonCreate = new Button();
        buttonCreate.text = "Create unsaved changes";
        buttonCreate.clicked += () => {
            hasUnsavedChanges = true;
            Debug.Log($"{this} has unsaved changes!!!");
        };
        rootVisualElement.Add(buttonCreate);

        var buttonSave = new Button();
        buttonSave.text = "Save";
        buttonSave.clicked += () => SaveChanges();
        rootVisualElement.Add(buttonSave);

        var buttonDiscard = new Button();
        buttonDiscard.text = "Discard";
        buttonDiscard.clicked += () => DiscardChanges();
        rootVisualElement.Add(buttonDiscard);
    }

    public override void SaveChanges()
    {
        // Your custom save procedures here

        Debug.Log($"{this} saved successfully!!!");
        base.SaveChanges();
    }

    public override void DiscardChanges()
    {
        // Your custom procedures to discard changes

        Debug.Log($"{this} discarded changes!!!");
        base.DiscardChanges();
    }
}
```
