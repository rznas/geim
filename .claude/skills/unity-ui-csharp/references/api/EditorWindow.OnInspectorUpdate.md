<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorWindow.OnInspectorUpdate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

OnInspectorUpdate is called at 10 frames per second to give the inspector a chance to update.

```csharp
// Simple script that aligns the position of several selected GameObjects
// with the first selected one.

using UnityEditor;
using UnityEngine;
using System.Collections;
using UnityEngine.UIElements;

public class OnInspectorUpdateExample : EditorWindow
{
    bool alignToX = true;
    bool alignToY = true;
    bool alignToZ = true;
    string selected = "";

    [MenuItem("Examples/OnInspectorUpdate example")]
    static void Init()
    {
        OnInspectorUpdateExample window = (OnInspectorUpdateExample)GetWindow(typeof(OnInspectorUpdateExample));
        window.Show();
    }

    void  OnInspectorUpdate()
    {        
        selected = Selection.activeTransform ? Selection.activeTransform.name : "";
    }

    void CreateGUI()
    {
        var label = new Label("Select various Objects in the Hierarchy view to align them with the last selected item.");
        rootVisualElement.Add(label);

        selected = Selection.activeTransform ? Selection.activeTransform.name : "";

        var labelSelected = new Label();
        rootVisualElement.Add(labelSelected);

        labelSelected.schedule.Execute(() =>
        {
            labelSelected.text = $"Selected object: {selected}";
        }).Every(10);

        var toggleX = new Toggle();
        toggleX.text = "X";
        toggleX.value = alignToX;
        toggleX.RegisterValueChangedCallback(evt => alignToX = evt.newValue);
        rootVisualElement.Add(toggleX);

        var toggleY = new Toggle();
        toggleY.text = "Y";
        toggleY.value = alignToY;
        toggleY.RegisterValueChangedCallback(evt => alignToY = evt.newValue);
        rootVisualElement.Add(toggleY);

        var toggleZ = new Toggle();
        toggleZ.text = "Z";
        toggleZ.value = alignToZ;
        toggleZ.RegisterValueChangedCallback(evt => alignToZ = evt.newValue);
        rootVisualElement.Add(toggleZ);

        var buttonAlign = new Button();
        buttonAlign.text = "Align";
        buttonAlign.clicked += () => Align();
        rootVisualElement.Add(buttonAlign);
    }

    void Align()
    {
        if (selected == "")
        {
            Debug.LogError("No objects selected to align");
        }

        foreach (Transform t in Selection.transforms)
        {
            Vector3 alignementPosition = Selection.activeTransform.position;
            Vector3 newPosition;

            newPosition.x = alignToX ? alignementPosition.x : t.position.x;
            newPosition.y = alignToY ? alignementPosition.y : t.position.y;
            newPosition.z = alignToZ ? alignementPosition.z : t.position.z;

            t.position = newPosition;
        }
    }
}
```
