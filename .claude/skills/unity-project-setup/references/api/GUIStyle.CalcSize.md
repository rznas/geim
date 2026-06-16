<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUIStyle.CalcSize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Calculate the size of some content if it is rendered with this style.

This function does not take word wrapping into account. To do that, you need to determine the allocated width and then call CalcHeight to figure out the word wrapped height.

```csharp
// Example for the GUIStyle.CalcSizeusing UnityEngine;public class CalcSizeExample : MonoBehaviour
{
    string s;    void Start()
    {
        s = "A string for GUIContent()";
    }    void OnGUI()
    {
        GUIContent content = new GUIContent(s);        GUIStyle style = GUI.skin.box;
        style.alignment = TextAnchor.MiddleCenter;        // Compute how large the button needs to be.
        Vector2 size = style.CalcSize(content);        // make the Box double sized
        GUI.Box(new Rect(10.0f, 10.0f, 2.0f * size.x, 2.0f * size.y), s);
    }
}
```
