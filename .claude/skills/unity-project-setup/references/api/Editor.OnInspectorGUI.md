<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Editor.OnInspectorGUI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Implement this function to make a custom inspector.

Inside this function you can add your own custom IMGUI based GUI for the inspector of a specific object class.

**Note:** This function has to be overridden in order to work.

Additional resources: Editor.DrawDefaultInspector.

The example below shows how a custom label can be created by using `override`:

```csharp
using UnityEngine;
using System.Collections;
using UnityEditor;// Creates a custom Label on the inspector for all the scripts named ScriptName
// Make sure you have a ScriptName script in your
// project, else this will not work.
[CustomEditor(typeof(ScriptName))]
public class TestOnInspector : Editor
{
    public override void OnInspectorGUI()
    {
        GUILayout.Label ("This is a Label in a Custom Editor");
    }
}
```
