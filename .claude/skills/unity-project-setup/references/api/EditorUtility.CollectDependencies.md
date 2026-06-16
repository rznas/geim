<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorUtility.CollectDependencies.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Calculates and returns a list of all assets the assets listed in `roots` depend on.

*Editor window that shows the next example.*

```csharp
using UnityEngine;
using UnityEditor;public class CollectDependenciesExample : EditorWindow
{
    static GameObject obj = null;
    [MenuItem("Example/Collect Dependencies")]
    static void Init()
    {
        // Get existing open window or if none, make a new one:
        CollectDependenciesExample window = (CollectDependenciesExample)EditorWindow.GetWindow(typeof(CollectDependenciesExample));
        window.Show();
    }    void OnGUI()
    {
        obj = EditorGUI.ObjectField(new Rect(3, 3, position.width - 6, 20), "Find Dependency", obj, typeof(GameObject)) as GameObject;        if (obj)
        {
            Object[] roots = new Object[] { obj };            if (GUI.Button(new Rect(3, 25, position.width - 6, 20), "Check Dependencies"))
                Selection.objects = EditorUtility.CollectDependencies(roots);
        }
        else
            EditorGUI.LabelField(new Rect(3, 25, position.width - 6, 20), "Missing:", "Select an object first");
    }    void OnInspectorUpdate()
    {
        Repaint();
    }
}
```
