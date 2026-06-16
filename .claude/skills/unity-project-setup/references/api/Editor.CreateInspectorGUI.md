<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Editor.CreateInspectorGUI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Implement this method to make a custom UIElements inspector.

Inside this method, you can create your own custom UIElements inspector for a specific object class.

**Note:** This function has to be overridden in order to work.

The example below shows how to use `override` to create a custom label.

```csharp
using UnityEngine;
using System.Collections;
using UnityEditor;// Creates a custom Label on the inspector for all the scripts named ScriptName
// Make sure you have a ScriptName script in your
// project, else this will not work.
[CustomEditor(typeof(ScriptName))]
public class TestOnInspector : Editor
{
    public override VisualElement CreateInspectorGUI()
    {
        return new Label("This is a Label in a Custom Editor");
    }
}
```
