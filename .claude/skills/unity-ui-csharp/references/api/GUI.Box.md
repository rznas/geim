<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUI.Box.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Rectangle on the screen to use for the box. |
| text | Text to display on the box. |
| image | Texture to display on the box. |
| content | Text, image and tooltip for this box. |
| style | The style to use. If left out, the `box` style from the current GUISkin is used. |

### Description

Create a Box on the GUI Layer.

A Box can contain text, an image, or a combination of these along with an optional tooltip, through using a GUIContent parameter. You may also use a GUIStyle to adjust the layout of items in a box, text colour and other properties.
 
 Here is an example of a Box containing Text:

```csharp
using UnityEngine;public class BoxExample : MonoBehaviour
{
    void OnGUI()
    {
        GUI.Box(new Rect(0, 0, Screen.width, Screen.height), "This is a box");
    }
}
```

Here is an example of a Box containing a Texture:

```csharp
using UnityEngine;public class BoxWithTextureExample : MonoBehaviour
{
    public Texture BoxTexture;      // Drag a Texture onto this item in the Inspector    void OnGUI()
    {
        GUI.Box(new Rect(0, 0, Screen.width, Screen.height), BoxTexture);
    }
}
```

Here is an example of a Box containing a GUIContent, combining Text, Texture and Tooltip:

```csharp
using UnityEngine;public class BoxWithContentExample : MonoBehaviour
{
    public Texture BoxTexture;      // Drag a Texture onto this item in the Inspector    GUIContent content;    void Start()
    {
        content = new GUIContent("This is a box", BoxTexture, "This is a tooltip");
    }    void OnGUI()
    {
        GUI.Box(new Rect(0, 0, Screen.width, Screen.height), content);
    }
}
```

Here is an example of a Box containing Text, with options set in a GUIStyle to position the Text in the center of the Box.

```csharp
using UnityEngine;public class BoxWithTextStyleExample : MonoBehaviour
{
    GUIStyle style = new GUIStyle();    void Start()
    {
        // Position the Text in the center of the Box
        style.alignment = TextAnchor.MiddleCenter;
    }    void OnGUI()
    {
        GUI.Box(new Rect(0, 0, Screen.width, Screen.height), "This is a box", style);
    }
}
```

Here is an example of a Box containing a Texture, with options set in a GUIStyle to position the Texture in the center of the Box.

```csharp
using UnityEngine;public class BoxWithTextureStyleExample : MonoBehaviour
{
    public Texture BoxTexture;              // Drag a Texture onto this item in the Inspector    GUIStyle style = new GUIStyle();
    void Start()
    {
        // Position the Texture in the center of the Box
        style.alignment = TextAnchor.MiddleCenter;
    }    void OnGUI()
    {
        GUI.Box(new Rect(0, 0, Screen.width, Screen.height), BoxTexture, style);
    }
}
```

Finally, here is an example of a Box containing a GUIContent, combining Text, Texture and Tooltip, with positional information contained in the GUIStyle parameter:

```csharp
using UnityEngine;public class BoxWithContentStyleExample : MonoBehaviour
{
    public Texture BoxTexture;              // Drag a Texture onto this item in the Inspector    GUIContent content;
    GUIStyle style = new GUIStyle();    void Start()
    {
        content = new GUIContent("This is a box", BoxTexture, "This is a tooltip");        // Position the Text and Texture in the center of the box
        style.alignment = TextAnchor.MiddleCenter;        // Position the Text below the Texture (rather than to the right of it)
        style.imagePosition = ImagePosition.ImageAbove;
    }    void OnGUI()
    {
        GUI.Box(new Rect(0, 0, Screen.width, Screen.height), content, style);
    }
}
```
