<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/InspectorNameAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this attribute on enum value declarations to change the display name shown in the Inspector.

Additional resources: SerializedProperty.enumDisplayNames

```csharp
using UnityEngine;public enum ModelImporterIndexFormat
{
    Auto = 0,
    [InspectorName("16 bits")]
    UInt16 = 1,
    [InspectorName("32 bits")]
    UInt32 = 2,
}
```

Using an empty string inserts a separator instead.

```csharp
[InspectorName("")]
```

### Properties

| Property | Description |
| --- | --- |
| displayName | Name to display in the Inspector. |

### Constructors

| Constructor | Description |
| --- | --- |
| InspectorNameAttribute | Specify a display name for an enum value. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| applyToCollection | Makes attribute affect collections instead of their items. |
| order | Optional field to specify the order that multiple DecorationDrawers should be drawn in. |
