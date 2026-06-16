<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUILayout.VerticalScope.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Disposable helper class for managing BeginVertical / EndVertical.

This is an extension to VerticalScope. It can be used for making compound controls


 *Vertical Compound group.*

```csharp
using UnityEngine;
using UnityEditor;// Create a Vertical Compound Button
class VerticalScopeExample : EditorWindow
{
    [MenuItem("Examples/Vertical scope usage")]
    static void Init()
    {
        var window = GetWindow<VerticalScopeExample>();
        window.Show();
    }    void OnGUI()
    {
        using (var v = new EditorGUILayout.VerticalScope("Button"))
        {
            if (GUI.Button(v.rect, GUIContent.none))
                Debug.Log("Go here");
            GUILayout.Label("I'm inside the button");
            GUILayout.Label("So am I");
        }
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| rect | The rect of the vertical group. |

### Constructors

| Constructor | Description |
| --- | --- |
| EditorGUILayout.VerticalScope | Create a new VerticalScope and begin the corresponding vertical group. |
