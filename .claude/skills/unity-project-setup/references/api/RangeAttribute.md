<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RangeAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Attribute used to make a float or int variable in a script be restricted to a specific range.

When this attribute is used, the float or int will be shown as a slider in the Inspector instead of the default number field.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // This integer will be shown as a slider,
    // with the range of 1 to 6 in the Inspector
    [Range(1, 6)]
    public int integerRange;    // This float will be shown as a slider,
    // with the range of 0.2f to 0.8f in the Inspector
    [Range(0.2f, 0.8f)]
    public float floatRange;
}
```

### Constructors

| Constructor | Description |
| --- | --- |
| RangeAttribute | Attribute used to make a float or int variable in a script be restricted to a specific range. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| applyToCollection | Makes attribute affect collections instead of their items. |
| order | Optional field to specify the order that multiple DecorationDrawers should be drawn in. |
