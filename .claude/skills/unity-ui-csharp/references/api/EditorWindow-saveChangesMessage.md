<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorWindow-saveChangesMessage.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The message that displays to the user if they are prompted to save

Set saveChangesMessage in a derived class to prevent users from accidentally losing unsaved work. For saveChangesMessage to work, you must use it with EditorWindow.hasUnsavedChanges and override the EditorWindow.SaveChanges method. This message shows exactly as you have written it. This message presents to users who have unsaved changes, if they attempt to close the window or tab with this EditorWindow. The save changes message might combine with other messages from other windows. This occurs if there are multiple windows that have unsaved changes.

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
