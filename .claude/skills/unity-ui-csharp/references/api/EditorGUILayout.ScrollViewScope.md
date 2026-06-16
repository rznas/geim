<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUILayout.ScrollViewScope.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Disposable helper class for managing BeginScrollView / EndScrollView.

These work just like ScrollViewScope but feel more application-like and should be used in the editor


 *Label inside a scroll view.*

```csharp
using UnityEngine;
using UnityEditor;// Simple Editor Window that creates a scroll view with a Label inside
class BeginEndScrollView : EditorWindow
{
    Vector2 scrollPos;
    string t = "This is a string inside a Scroll view!";    [MenuItem("Examples/Write text on ScrollView")]
    static void Init()
    {
        var window = GetWindow<BeginEndScrollView>();
        window.Show();
    }    void OnGUI()
    {
        using (var h = new EditorGUILayout.HorizontalScope())
        {
            using (var scrollView = new EditorGUILayout.ScrollViewScope(scrollPos, GUILayout.Width(100), GUILayout.Height(100)))
            {
                scrollPos = scrollView.scrollPosition;
                GUILayout.Label(t);
            }
            if (GUILayout.Button("Add More Text", GUILayout.Width(100), GUILayout.Height(100)))
                t += " \nAnd this is more text!";
        }
        if (GUILayout.Button("Clear"))
            t = "";
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| handleScrollWheel | Whether this ScrollView should handle scroll wheel events. (default: true). |
| scrollPosition | The modified scrollPosition. Feed this back into the variable you pass in, as shown in the example. |

### Constructors

| Constructor | Description |
| --- | --- |
| EditorGUILayout.ScrollViewScope | Create a new ScrollViewScope and begin the corresponding ScrollView. |
