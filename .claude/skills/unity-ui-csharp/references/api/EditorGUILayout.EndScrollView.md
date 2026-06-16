<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUILayout.EndScrollView.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Ends a scrollview started with a call to BeginScrollView.

*Label inside a scroll view.*

```csharp
using UnityEngine;
using UnityEditor;// Simple Editor Window that creates a scroll view with a Label insidepublic class CreateEndScrollViewCS : EditorWindow
{
    Vector2 scrollPos;
    string t = "This is a string inside a Scroll view!";    [MenuItem("Examples/Write text on ScrollView")]
    static void Init()
    {
        EditorWindow window = GetWindow(typeof(CreateEndScrollViewCS));
        window.Show();
    }    void OnGUI()
    {
        EditorGUILayout.BeginHorizontal();
        scrollPos =
            EditorGUILayout.BeginScrollView(scrollPos, GUILayout.Width(100), GUILayout.Height(100));
        GUILayout.Label(t);
        EditorGUILayout.EndScrollView();
        if (GUILayout.Button("Add More Text", GUILayout.Width(100), GUILayout.Height(100)))
            t += " \nAnd this is more text!";
        EditorGUILayout.EndHorizontal();
        if (GUILayout.Button("Clear"))
            t = "";
    }
}
```
