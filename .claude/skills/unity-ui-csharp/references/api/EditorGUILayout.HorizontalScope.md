<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUILayout.HorizontalScope.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Disposable helper class for managing BeginHorizontal / EndHorizontal.

This is an extension to HorizontalScope. It can be used for making compound controls


 *Horizontal Compound group.*

```csharp
using UnityEngine;
using UnityEditor;// Create a Horizontal Compound Button
class HorizontalScopeExample : EditorWindow
{
    [MenuItem("Examples/Horizontal scope usage")]
    static void Init()
    {
        var window = GetWindow<HorizontalScopeExample>();
        window.Show();
    }    void OnGUI()
    {
        using (var h = new EditorGUILayout.HorizontalScope("Button"))
        {
            if (GUI.Button(h.rect, GUIContent.none))
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
| rect | The rect of the horizontal group. |

### Constructors

| Constructor | Description |
| --- | --- |
| EditorGUILayout.HorizontalScope | Create a new HorizontalScope and begin the corresponding horizontal group. |
