<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUI.DrawRect.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| rect | The position and size of the rectangle to draw. |
| color | The color of the rectange. |

### Description

Draws a filled rectangle of color at the specified position and size within the current editor window.

Use this to give blocks of Color to areas you want to highlight in the Inspector window of a GameObject in the Editor. You can also use them to simulate statistics in the Editor, for example, an in-Editor health bar.

```csharp
using UnityEngine;
using UnityEditor;public class EditorGUIDrawRectExample : EditorWindow
{
    //This is the value of the Slider
    float m_Value = 50;    [MenuItem("Example/Draw Rect")]
    static void Init()
    {
        var window = (EditorGUIDrawRectExample)GetWindow(typeof(EditorGUIDrawRectExample));
        window.position = new Rect(0, 0, 350, 300);
    }    void OnGUI()
    {
        //This is the Label for the Slider
        GUI.Label(new Rect(0, 0, 100, 30), "Rectangle Width");
        //This is the Slider that changes the size of the Rectangle drawn
        m_Value = GUI.HorizontalSlider(new Rect(100, 0, 100, 30), m_Value, 1.0f, 250.0f);        //The rectangle is drawn in the Editor (when MyScript is attached) with the width depending on the value of the Slider
        EditorGUI.DrawRect(new Rect(50, 50, m_Value, 70), Color.green);
    }
}
```
