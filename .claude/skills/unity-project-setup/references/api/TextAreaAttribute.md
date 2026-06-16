<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextAreaAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Attribute to make a string be edited with a height-flexible and scrollable text area.

You can specify the minimum and maximum lines for the TextArea, and the field will expand according to the size of the text. A scrollbar will appear if the text is bigger than the area available.

**Note:** The maximum lines refers to the maximum size of the TextArea. There is no maximum to the number of lines entered by the user.


 *Text Area in Inspector.*

```csharp
using UnityEngine;public class TextAreaExample : MonoBehaviour
{
    [TextAreaAttribute]
    public string MyTextArea;
}
```

### Properties

| Property | Description |
| --- | --- |
| maxLines | The maximum amount of lines the text area can show before it starts using a scrollbar. |
| minLines | The minimum amount of lines the text area will use. |

### Constructors

| Constructor | Description |
| --- | --- |
| TextAreaAttribute | Attribute to make a string be edited with a height-flexible and scrollable text area. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| applyToCollection | Makes attribute affect collections instead of their items. |
| order | Optional field to specify the order that multiple DecorationDrawers should be drawn in. |
