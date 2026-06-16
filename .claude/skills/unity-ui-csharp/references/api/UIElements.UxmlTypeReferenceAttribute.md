<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.UxmlTypeReferenceAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides information about the expected type when applied to a Type field or property that has the UxmlAttributeAttribute attribute.

When defining a Type field or property with the UxmlAttributeAttribute in Unity, you can use the UxmlTypeReference attribute to specify the base type that the value should inherit from. This allows you to provide additional information about the expected type of the value and helps Unity ensure that the correct type is assigned to the attribute. 

The following example creates a custom control and restricts the attribute type to only accept values that are derived from VisualElement:

```csharp
using System;
using UnityEngine.UIElements;[UxmlElement]
public partial class TypeRestrictionExample : VisualElement
{
    [UxmlAttribute, UxmlTypeReference(typeof(VisualElement))]
    public Type elementType { get; set; }
}
```

### Properties

| Property | Description |
| --- | --- |
| baseType | The base type that the value inherits from. |

### Constructors

| Constructor | Description |
| --- | --- |
| UxmlTypeReferenceAttribute | Provides information about the expected type when applied to a Type field or property that has the UxmlAttributeAttribute attribute. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| applyToCollection | Makes attribute affect collections instead of their items. |
| order | Optional field to specify the order that multiple DecorationDrawers should be drawn in. |
