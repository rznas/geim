<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorWindow.ShowUtility.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Show the EditorWindow as a floating utility window.

When the utility window loses focus it remains on top of the new active window. This means the EditorWindow.ShowUtility window is never hidden by the Unity editor. It is, however, not dockable to the editor.

Utility windows will always be in front of normal Unity windows. It will be hidden when the user switches from Unity to another application.

**Note:** You do not need to use EditorWindow.GetWindow before using this function to show the window.

```csharp
// Simple script that randomizes the rotation of the selected GameObjects.

using UnityEditor;
using UnityEngine;
using UnityEngine.UIElements;

public class RandomizeInSelectionShowUtility : EditorWindow
{
    System.Random random = new System.Random();
    public float rotationAmount;
    public string selected = "";

    [MenuItem("Examples/Randomize Objects")]
    static void Init()
    {
        RandomizeInSelectionShowUtility window =
            EditorWindow.GetWindow<RandomizeInSelectionShowUtility>(true, "Randomize Objects");
        window.ShowUtility();
    }

    void CreateGUI()
    {
        var label = new Label("Selected an object and click Randomize!");
        rootVisualElement.Add(label);

        var buttonRandomize = new Button();
        buttonRandomize.text = "Randomize!";
        buttonRandomize.clicked += () => RandomizeSelected();
        rootVisualElement.Add(buttonRandomize);
    }

    void RandomizeSelected()
    {
        foreach (var transform in Selection.transforms)
        {
            Quaternion rotation = Random.rotation;
            rotationAmount = (float)random.NextDouble();
            transform.localRotation = Quaternion.Slerp(transform.localRotation, rotation, rotationAmount);
        }
    }
}
```
