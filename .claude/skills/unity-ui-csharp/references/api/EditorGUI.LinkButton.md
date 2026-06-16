<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUI.LinkButton.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Rectangle on the screen to use for the control. The underline is done with the bottom border so set the size accordingly. |
| label | Label of the link. |

### Returns

**bool** `true` when the user clicks the link.

### Description

Make a clickable link label.

The label has an hyperlink style and returns true when clicked.

```csharp
using UnityEditor;
using UnityEngine;
class EditorGUILinkButton : EditorWindow
{
    [MenuItem("Examples/EditorGUILinkButton")]
    static void Init()
    {
        var window = GetWindow<EditorGUILinkButton>();
        window.Show();
    }    void OnGUI()
    {
        var label = new GUIContent("Link Button");
        var size = EditorStyles.linkLabel.CalcSize(label);
        if (EditorGUI.LinkButton(new Rect(50, 50, size.x, size.y), label))
            Debug.Log("Clicked");
    }
}
```
