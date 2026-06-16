<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUIContent-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Constructor for GUIContent in all shapes and sizes.

Build an empty GUIContent.

### Description

Build a GUIContent object containing only text.

When using the GUI, you don't need to create GUIContents for simple text strings - these two lines of code are functionally equivalent:

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void OnGUI()
    {
        GUI.Button(new Rect(0, 0, 100, 20), "Click Me");
        GUI.Button(new Rect(0, 30, 100, 20), new GUIContent("Click Me"));
    }
}
```

### Description

Build a GUIContent object containing only an image.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    public Texture icon;
    void OnGUI()
    {
        GUI.Button(new Rect(0, 30, 100, 20), new GUIContent(icon));
    }
}
```

### Description

Build a GUIContent object containing both `text` and an image.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    public Texture icon;
    void OnGUI()
    {
        GUI.Button(new Rect(0, 30, 100, 20), new GUIContent("Click me", icon));
    }
}
```

### Description

Build a GUIContent containing some `text`. When the user hovers the mouse over it, the global GUI.tooltip is set to the `tooltip`.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void OnGUI()
    {
        GUI.Button(new Rect(0, 0, 100, 20), new GUIContent("Click me", "This is the tooltip"));        // If the user hovers the mouse over the button, the global tooltip gets set
        GUI.Label(new Rect(0, 40, 100, 40), GUI.tooltip);
    }
}
```

### Description

Build a GUIContent containing an image. When the user hovers the mouse over it, the global GUI.tooltip is set to the `tooltip`.

### Description

Build a GUIContent that contains both `text`, an `image` and has a `tooltip` defined. When the user hovers the mouse over it, the global GUI.tooltip is set to the `tooltip`.

### Description

Build a GUIContent as a copy of another GUIContent.
