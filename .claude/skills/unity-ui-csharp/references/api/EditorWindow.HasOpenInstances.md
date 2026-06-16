<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorWindow.HasOpenInstances.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| windowType | The type of the window. Must derive from EditorWindow. |

### Returns

**bool** Returns true if an EditorWindow, matching the specified type, is open. Returns false otherwise.

### Description

Checks if an editor window is open.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEngine.UIElements;

public class HasOpenInstancesExample : EditorWindow
{
    [MenuItem("Examples/Has Open Instances")]
    static void Init()
    {
        var window = EditorWindow.GetWindow<HasOpenInstancesExample>();
        window.Show();
    }

    [MenuItem("Examples/Close Open Instances")]
    static void Close()
    {
        // Check if any window of type HasOpenInstancesExample is open.
        if (EditorWindow.HasOpenInstances<HasOpenInstancesExample>())
        {
            var window = EditorWindow.GetWindow(typeof(HasOpenInstancesExample));
            window.Close();
        }
    }

    void CreateGUI()
    {
        var label = new Label("Hello, World!");
        rootVisualElement.Add(label);
    }
}
```
