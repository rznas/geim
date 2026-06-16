<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TooltipAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specify a tooltip for a field in the Inspector window.

*Tooltip hovering over the class it was added to.*

In the following script a `Tooltip` is added. This provides information to the user about the range of values for the `health` variable. The suggested range is provided in the `TooltipAttribute` string.

Note: Unity will only use Tooltips from Fields when displaying them in the Editor. You can add Tooltips to other areas, such as classes, structs, and properties to work with user created editor extensions, but Unity won't display them in the Editor.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    [Tooltip("Health value between 0 and 100.")]
    int health = 0;
}
```

### Properties

| Property | Description |
| --- | --- |
| tooltip | The tooltip text. |

### Constructors

| Constructor | Description |
| --- | --- |
| TooltipAttribute | Specify a tooltip for a field. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| applyToCollection | Makes attribute affect collections instead of their items. |
| order | Optional field to specify the order that multiple DecorationDrawers should be drawn in. |
