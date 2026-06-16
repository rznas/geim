<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUILayout.Space.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Insert a space in the current layout group.

The direction of the space is dependent on the layout group you're currently in when issuing the command. If in a vertical group, the space will be vertical. **Note:** This will override the GUILayout.ExpandWidth and GUILayout.ExpandHeight


 *Space of 20px between two buttons.*

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void OnGUI()
    {
        GUILayout.Button("I'm the first button");        // Insert 20 pixels of space between the 2 buttons.
        GUILayout.Space(20);        GUILayout.Button("I'm a bit further down");
    }
}
```

In horizontal groups, the `pixels` are measured horizontally:

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void OnGUI()
    {
        GUILayout.BeginHorizontal();
        GUILayout.Button("I'm the first button");        // Insert 20 pixels of space between the 2 buttons.
        GUILayout.Space(20);        GUILayout.Button("I'm the second button");
        GUILayout.EndHorizontal();
    }
}
```

An example that is based on EditorWindow:

```csharp
using UnityEngine;
using UnityEditor;// Example of using GUILayout.Space inside an EditorWindow.
// Clicking on the buttons changes the size of the Space.public class ExampleClass : EditorWindow
{
    [MenuItem("Examples/GUILayout.Space")]
    static void CreateWindow()
    {
        EditorWindow window = GetWindow<ExampleClass>();
        window.Show();
    }    private float spaceSize = 20.0f;    void OnGUI()
    {
        if (GUILayout.Button("Button1: Move Button2 down by 2 pixels"))
        {
            spaceSize = spaceSize + 2.0f;
        }        GUILayout.Space(spaceSize);        if (GUILayout.Button("Button2: Move up by 1 pixel"))
        {
            spaceSize = spaceSize - 1.0f;
        }
    }
}
```
