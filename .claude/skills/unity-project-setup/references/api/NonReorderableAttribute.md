<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/NonReorderableAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Disables reordering of an array or list in the Inspector window.

By default, array or list script variables are presented with a UI control that allows array element reordering via drag handles to the left of element content. You can use [NonReorderable] attribute on a script array or list variable to disable this. When reordering is disabled, the Inspector shows arrays or lists with a simple UI control that has an array size followed by array elements.

```csharp
using UnityEngine;public class NonReorderableAttributeTest : MonoBehaviour
{
    [NonReorderable]
    public int[] array;
}
```

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| applyToCollection | Makes attribute affect collections instead of their items. |
| order | Optional field to specify the order that multiple DecorationDrawers should be drawn in. |
