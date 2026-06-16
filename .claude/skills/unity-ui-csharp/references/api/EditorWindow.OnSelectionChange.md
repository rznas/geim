<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorWindow.OnSelectionChange.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Called whenever the selection has changed.

*Saves the current selection and load it later with a simple click.*

```csharp
// Simple example that lets you save the current selection and load it.

using UnityEditor;
using UnityEngine.UIElements;

public class OnSelectionChangeExample : EditorWindow
{
    private int[] selectionIDs;

    [MenuItem("Examples/Selection Saver")]
    private static void Init()
    {
        OnSelectionChangeExample window = (OnSelectionChangeExample)GetWindow(typeof(OnSelectionChangeExample));
        window.Show();
    }

    void CreateGUI()
    {
        var buttonSave = new Button();
        buttonSave.text = "Save";
        buttonSave.clicked += () => SaveSelection();
        rootVisualElement.Add(buttonSave);
        
        var buttonLoad = new Button();
        buttonLoad.text = "Load";
        buttonLoad.clicked += () => LoadLastSavedSelection();
        rootVisualElement.Add(buttonLoad);

        // Initialize selectionIDs at least once
        OnSelectionChange();
    }

    void OnSelectionChange()
    {
        selectionIDs = Selection.instanceIDs;
    }

    private void SaveSelection()
    {
        var saveStr = "";

        foreach (int i in selectionIDs)
        {
            saveStr += i + ";";
        }

        saveStr = saveStr.TrimEnd(char.Parse(";"));
        EditorPrefs.SetString("SelectedIDs", saveStr);
    }

    private void LoadLastSavedSelection()
    {
        string[] strIDs = EditorPrefs.GetString("SelectedIDs").Split(char.Parse(";"));

        int[] ids = new int[strIDs.Length];
        for (var i = 0; i < strIDs.Length; i++)
        {
            if (!string.IsNullOrEmpty(strIDs[i]))
                ids[i] = int.Parse(strIDs[i]);
        }

        Selection.instanceIDs = ids;
    }
}
```
