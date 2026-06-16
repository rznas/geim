<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUI.Toggle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Rectangle on the screen to use for the toggle. |
| label | Optional label in front of the toggle. |
| value | The shown state of the toggle. |
| style | Optional GUIStyle. |

### Returns

**bool** The selected state of the toggle.

### Description

Makes a toggle.

*Toggle control in an Editor Window.*

```csharp
// Use a toggle button to show/hide a button that can close the window.
using UnityEngine;
using UnityEditor;class EditorGUIToggle : EditorWindow
{
    bool showClose =  true;    [MenuItem("Examples/EditorGUI Toggle usage")]
    static void Init()
    {
        EditorGUIToggle window = (EditorGUIToggle)GetWindow(typeof(EditorGUIToggle), true, "My Empty Window");
        window.Show();
    }    void OnGUI()
    {
        showClose = EditorGUI.Toggle(new Rect(0, 5, position.width, 20),
            "Show Close Button",
            showClose);
        if (showClose)
            if (GUI.Button(new Rect(0, 25, position.width, 100), "Close Window!"))
                this.Close();
    }
}
```
