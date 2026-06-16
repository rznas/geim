<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/InspectorOrderAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Shows sorted enum values in the Inspector enum UI dropdowns i.e. EditorGUI.EnumPopup, PropertyField etc. This attribute can be applied to enum types only.

Note: this attribute affects enum UI order only, not the behavior.

```csharp
using UnityEngine;public class SortedEnumExample : MonoBehaviour
{
    // Sorts enum by value in descending order
    [InspectorOrder(InspectorSort.ByValue, InspectorSortDirection.Descending)]
    public enum SortedByValueExample
    {
        SecondItem = 2,
        ThirdItem = 3,
        FirstItem = 1
    }    // Sorts enum by name in ascending order
    [InspectorOrder()]
    public enum SortedByNameExample
    {
        SecondItem,
        ThirdItem,
        FirstItem
    }    public SortedByValueExample sortedByValueExample;
    public SortedByNameExample sortedByNameExample;
}
```

### Constructors

| Constructor | Description |
| --- | --- |
| InspectorOrderAttribute | Default constructor initializes the attribute for enum to be shown sorted in UI dropdowns. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| applyToCollection | Makes attribute affect collections instead of their items. |
| order | Optional field to specify the order that multiple DecorationDrawers should be drawn in. |
