<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/DelayedAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Delays the update of a variable's value.

When this attribute is used, the field only returns a new value after the user presses Enter or shifts focus away from the field.

- IMGUI Inspector: Supports `float`, `int`, and `string` types.
- UI Toolkit Inspector: Supports `float`, `int`, `string`, `Vector`, and `Rect` types.

```csharp
using UnityEngine;public class DelayedExample : MonoBehaviour
{
    [Delayed]
    public float myDelayedFloat;
}
```

### Constructors

| Constructor | Description |
| --- | --- |
| DelayedAttribute | Create a new DelayedAttribute. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| applyToCollection | Makes attribute affect collections instead of their items. |
| order | Optional field to specify the order that multiple DecorationDrawers should be drawn in. |
