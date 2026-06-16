<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ColorUtility.TryParseHtmlString.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| htmlString | Case insensitive html string to be converted into a color. |
| color | The converted color. |

### Returns

**bool** True if the string was successfully converted else false.

### Description

Attempts to convert a html color string.

**Strings that begin with '#' will be parsed as hexadecimal in the following way:** 
 #RGB (becomes RRGGBB)
 #RRGGBB
 #RGBA (becomes RRGGBBAA)
 #RRGGBBAA

 When not specified alpha will default to FF. 
 **Strings that do not begin with '#' will be parsed as literal colors, with the following supported:**
 red, cyan, blue, darkblue, lightblue, purple, yellow, lime, fuchsia, white, silver, grey, black, orange, brown, maroon, green, olive, navy, teal, aqua, magenta..
 
 The following example creates a custom PropertyDrawer that allows the user to input html colors. This property drawer can be shown in the inspector when a color property has the attribute ColorHtmlProperty.


 *our custom property drawer.*

```csharp
// This is not an editor script.
using UnityEngine;public class ColorHtmlPropertyAttribute : PropertyAttribute
{
}
```

```csharp
// This is an editor script and should be placed in an 'Editor' directory.
using UnityEngine;
using UnityEditor;[CustomPropertyDrawer(typeof(ColorHtmlPropertyAttribute))]
public class ColorHtmlPropertyDrawer : PropertyDrawer
{
    public override void OnGUI(Rect position, SerializedProperty property, GUIContent label)
    {
        Rect htmlField = new Rect(position.x, position.y, position.width - 100, position.height);
        Rect colorField = new Rect(position.x + htmlField.width, position.y, position.width - htmlField.width, position.height);        string htmlValue = EditorGUI.TextField(htmlField, label, "#" + ColorUtility.ToHtmlStringRGBA(property.colorValue));        Color newCol;
        if (ColorUtility.TryParseHtmlString(htmlValue, out newCol))
            property.colorValue = newCol;        property.colorValue = EditorGUI.ColorField(colorField, property.colorValue);
    }
}
```

```csharp
// This shows how we would use the PropertyDrawer.
using UnityEngine;public class Example : MonoBehaviour
{
    [ColorHtmlProperty]
    public Color htmlColor = Color.green;    public Color standardColor = Color.green;
}
```
