<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUILayoutUtility.GetRect.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| content | The content to make room for displaying. |
| style | The GUIStyle to layout for. |
| options | An optional list of layout options that specify extra layouting properties. Any values passed in here will override settings defined by the `style`.  Additional resources: GUILayout.Width, GUILayout.Height, GUILayout.MinWidth, GUILayout.MaxWidth, GUILayout.MinHeight, GUILayout.MaxHeight, GUILayout.ExpandWidth, GUILayout.ExpandHeight. |

### Returns

**Rect** A rectangle that is large enough to contain content when rendered in style.

### Description

Reserve layout space for a rectangle for displaying some contents with a specific style.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    // Shows the button rect properties in a label when the mouse is over it
    GUIContent buttonText = new GUIContent("some button");
    GUIStyle buttonStyle = GUIStyle.none;    void OnGUI()
    {
        Rect rt = GUILayoutUtility.GetRect(buttonText, buttonStyle);
        if (rt.Contains(Event.current.mousePosition))
        {
            GUI.Label(new Rect(0, 20, 200, 70), "PosX: " + rt.x + "\nPosY: " + rt.y +
                "\nWidth: " + rt.width + "\nHeight: " + rt.height);
        }
        GUI.Button(rt, buttonText, buttonStyle);
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| width | The width of the area you want. |
| height | The height of the area you want. |
| style | An optional GUIStyle to layout for. If specified, the style's `padding` value will be added to your sizes & its `margin` value will be used for spacing. |
| options | An optional list of layout options that specify extra layouting properties. Any values passed in here will override settings defined by the `style`.  Additional resources: GUILayout.Width, GUILayout.Height, GUILayout.MinWidth, GUILayout.MaxWidth, GUILayout.MinHeight, GUILayout.MaxHeight, GUILayout.ExpandWidth, GUILayout.ExpandHeight. |

### Returns

**Rect** The rectangle to put your control in.

### Description

Reserve layout space for a rectangle with a fixed content area.

### Parameters

| Parameter | Description |
| --- | --- |
| minWidth | The minimum width of the area passed back. |
| maxWidth | The maximum width of the area passed back. |
| minHeight | The minimum width of the area passed back. |
| maxHeight | The maximum width of the area passed back. |
| style | An optional style. If specified, the style's `padding` value will be added to the sizes requested & the style's `margin` values will be used for spacing. |
| options | An optional list of layout options that specify extra layouting properties. Any values passed in here will override settings defined by the `style`.  Additional resources: GUILayout.Width, GUILayout.Height, GUILayout.MinWidth, GUILayout.MaxWidth, GUILayout.MinHeight, GUILayout.MaxHeight, GUILayout.ExpandWidth, GUILayout.ExpandHeight. |

### Returns

**Rect** A rectangle with size between minWidth & maxWidth on both axes.

### Description

Reserve layout space for a flexible rect.

The rectangle's size will be between the min & max values.
