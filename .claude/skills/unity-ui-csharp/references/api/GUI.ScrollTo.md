<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUI.ScrollTo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Scrolls all enclosing scrollviews so they try to make `position` visible.

```csharp
// Draws a Scroll view with 2 buttons inside.
// When clicked each button it moves the scroll
// where the other button is locatedusing UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public Vector2 scrollPos = Vector2.zero;
    void OnGUI()
    {
        scrollPos = GUI.BeginScrollView(new Rect(10, 10, 100, 50), scrollPos, new Rect(0, 0, 220, 10));        if (GUI.Button(new Rect(0, 0, 100, 20), "Go Right"))
            GUI.ScrollTo(new Rect(120, 0, 100, 20));        if (GUI.Button(new Rect(120, 0, 100, 20), "Go Left"))
            GUI.ScrollTo(new Rect(0, 0, 100, 20));        GUI.EndScrollView();
    }
}
```
