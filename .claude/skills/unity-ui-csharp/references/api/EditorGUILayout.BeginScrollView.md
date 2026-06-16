<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUILayout.BeginScrollView.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| scrollPosition | The position to use display. |
| style | Optional GUIStyle to use for the background. |
| background | Optional GUIStyle to use for the background. |
| alwaysShowHorizontal | Optional parameter to always show the horizontal scrollbar. If false or left out, it is only shown when the content inside the ScrollView is wider than the scrollview itself. |
| alwaysShowVertical | Optional parameter to always show the vertical scrollbar. If false or left out, it is only shown when content inside the ScrollView is taller than the scrollview itself. |
| horizontalScrollbar | Optional GUIStyle to use for the horizontal scrollbar. If left out, the `horizontalScrollbar` style from the current GUISkin is used. |
| verticalScrollbar | Optional GUIStyle to use for the vertical scrollbar. If left out, the `verticalScrollbar` style from the current GUISkin is used. |

### Returns

**Vector2** The modified scrollPosition. Feed this back into the variable you pass in, as shown in the example.

### Description

Begin an automatically laid out scrollview.

These work just like GUILayout.BeginScrollView but feel more application-like and should be used in the editor


 *Label inside a scroll view.*

```csharp
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;public class BeginScrollViewExample : EditorWindow
{
    Vector2 scrollPos;
    string t = "This is a string inside a Scroll view!";    [MenuItem("Examples/Begin Scroll View Example")]
    static void Init()
    {
        BeginScrollViewExample window = (BeginScrollViewExample)EditorWindow.GetWindow(typeof(BeginScrollViewExample), true, "BeginEndScrollViewExample");
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
