<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUILayout.LinkButton.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| label | Label of the link. |
| options | An optional list of layout options that specify extra layout properties. Any values passed in here will override settings defined by the `style`.  Additional resources: GUILayout.Width, GUILayout.Height, GUILayout.MinWidth, GUILayout.MaxWidth, GUILayout.MinHeight, GUILayout.MaxHeight, GUILayout.ExpandWidth, GUILayout.ExpandHeight. |

### Returns

**bool** `true` when the user clicks the link.

### Description

Make a clickable link label.

The label has an hyperlink style and returns true when clicked.

```csharp
using UnityEditor;
using UnityEngine;class EditorGUILayoutLinkButton : EditorWindow
{
    [MenuItem("Examples/EditorGUILayoutLinkButton")]
    static void Init()
    {
        var window = GetWindow<EditorGUILayoutLinkButton>();
        window.Show();
    }    void OnGUI()
    {
        if (EditorGUILayout.LinkButton("Link Button"))
            Debug.Log("Clicked");
    }
}
```
