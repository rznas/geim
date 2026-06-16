<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUISkin-scrollView.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Style used by default for the background of ScrollView controls (see GUI.BeginScrollView).

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Modifies only the background of the ScrollView controls
    // of the current GUISkin.    Vector2 scrollPosition = Vector2.zero;
    public GUIStyle style;    void OnGUI()
    {
        GUI.skin.scrollView = style;
        // rect and put it in a small rect on the screen.
        scrollPosition = GUI.BeginScrollView(new Rect(10, 300, 100, 100),
            scrollPosition, new Rect(0, 0, 220, 200));        // Make four buttons - one in each corner. The coordinate system is defined
        // by the last parameter to BeginScrollView.
        GUI.Button(new Rect(0, 0, 100, 20), "Top-left");
        GUI.Button(new Rect(120, 0, 100, 20), "Top-right");
        GUI.Button(new Rect(0, 180, 100, 20), "Bottom-left");
        GUI.Button(new Rect(120, 180, 100, 20), "Bottom-right");        // End the scroll view that we began above.
        GUI.EndScrollView();
    }
}
```
