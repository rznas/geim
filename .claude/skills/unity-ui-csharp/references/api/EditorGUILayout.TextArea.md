<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUILayout.TextArea.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| text | The text to edit. |
| style | Optional GUIStyle. |
| options | An optional list of layout options that specify extra layout properties. Any values passed in here will override settings defined by the `style`.  Additional resources: GUILayout.Width, GUILayout.Height, GUILayout.MinWidth, GUILayout.MaxWidth, GUILayout.MinHeight, GUILayout.MaxHeight, GUILayout.ExpandWidth, GUILayout.ExpandHeight. |

### Returns

**string** The text entered by the user.

### Description

Make a text area.

This works just like @@GUILayout.TextArea@@ with proper responsiveness to actions like **Select all**, **Copy**, **Paste** in the Editor.
 For Undo support, see Undo.RecordObject.
 To make the text wrap, set **EditorStyles.textField.wordWrap**.

 
 *Quick script editor.*

```csharp
// Simple script that lets you visualize your scripts in an editor window
// This can be expanded to save your scripts also in the editor window.using UnityEngine;
using UnityEditor;public class TextAreaExample : EditorWindow
{
    string text = "Nothing Opened...";
    TextAsset txtAsset;
    Vector2 scroll;    [MenuItem("Examples/TextArea usage")]
    static void Init()
    {
        TextAreaExample window = (TextAreaExample)GetWindow(typeof(TextAreaExample), true, "EditorGUILayout.TextArea");
        window.Show();
    }    Object source;    void OnGUI()
    {
        source = EditorGUILayout.ObjectField(source, typeof(Object), true);
        TextAsset newTxtAsset = (TextAsset)source;        if (newTxtAsset != txtAsset)
            ReadTextAsset(newTxtAsset);        scroll = EditorGUILayout.BeginScrollView(scroll, GUILayout.Height(position.height - 30));
        text = EditorGUILayout.TextArea(text);
        EditorGUILayout.EndScrollView();
    }    void ReadTextAsset(TextAsset txt)
    {
        text = txt.text;
        txtAsset = txt;
    }
}
```
