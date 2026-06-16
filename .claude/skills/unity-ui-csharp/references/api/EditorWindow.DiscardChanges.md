<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorWindow.DiscardChanges.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Discards unsaved changes to the contents of the window.

Override DiscardChanges() to discard unsaved work when a window is closed. The Editor calls this method internally when the user closes the window. After the Editor calls this method, it prompts the user to discard changes. When you override this method, call the base implementation. Otherwise the EditorWindow.hasUnsavedChanges property is not reset to false. Note, if the Editor has multiple prompts to the user to discard their changes, the Editor will call this method as part of a list of changes that need to be discarded. If this method throws an exception, Unity cancels the discard process for all remaining prompts. In that case, a dialog box displays an error message with the exception message.

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
