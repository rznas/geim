<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorWindow.ShowModalUtility.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Shows the EditorWindow as a floating modal window.

You cannot interact with the Editor while the utility window is opened. The EditorWindow.ShowModalUtility window is never hidden by the Editor. You cannot dock the utility window to the Editor.

Utility windows are always in front of normal Unity windows. The utility window is hidden when the user switches from Unity to another application.

**Note:** You do not need to use EditorWindow.GetWindow before you use this function to show the window.

```csharp
// Simple script that randomizes the rotation of the selected GameObjects.

using UnityEditor;
using UnityEngine;
using UnityEngine.UIElements;

public class RandomizeInSelection : EditorWindow
{
    System.Random random = new System.Random();
    public float rotationAmount;
    public string selected = "";

    [MenuItem("Examples/Randomize Objects")]
    static void Init()
    {
        RandomizeInSelection window =
            EditorWindow.GetWindow<RandomizeInSelection>(true, "Randomize Objects");
        window.ShowModalUtility();
    }

    void CreateGUI()
    {
        var label = new Label("Select an object and click the Randomize! button");
        rootVisualElement.Add(label);

        var randomizeButton = new Button();
        randomizeButton.text = "Randomize!";
        randomizeButton.clicked += () => RandomizeSelected();
        rootVisualElement.Add(randomizeButton);
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
