<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EntityId.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A unique identifier for a Unity object.

The internal representation of `EntityId` is an implementation detail and might change between versions. To ensure compatibility, avoid the following patterns:

- Casting `EntityId` to or from an integer type.
- Assuming any particular bit layout or sign conventions.
- Using `Object.GetHashCode` to obtain an `EntityId`.
- Serializing `EntityId` with `ToString` and deserializing with integer parsing.
- Sorting `EntityId` values to determine creation order.
- Manipulating individual bits of the `EntityId` value.

Use the provided API methods such as `GetRawData`, `IsValid`, `Equals`, and `GetHashCode` for working with `EntityId` values.

**Note**: Code that previously used `InstanceID` as an integer should be updated to use the `EntityId` API methods instead.

### Static Properties

| Property | Description |
| --- | --- |
| None | Gets an EntityId that represents no valid Object or Entity. Use this to indicate an invalid or unassigned identifier. |

### Public Methods

| Method | Description |
| --- | --- |
| CompareTo | Compares this EntityId to another EntityId. |
| Equals | Determines whether the specified object is equal to this EntityId. |
| GetHashCode | Returns a hash code for this EntityId. |
| IsValid | Determines whether this EntityId represents a valid entity. |
| ToString | Returns a string representation of this EntityId. |

### Static Methods

| Method | Description |
| --- | --- |
| FromULong | Creates an EntityId from raw ulong data. This should have come from another valid EntityId. (Use at your own risk. And bit arrangement might change.) |
| ToULong | Gets the raw data of the EntityId. (Use at your own risk. And bit arrangement might change.) |

### Operators

| Operator | Description |
| --- | --- |
| operator != | Determines whether two EntityId instances are not equal. |
| operator < | Determines whether the first EntityId is less than the second. |
| operator == | Determines whether two EntityId instances are equal. |
| operator > | Determines whether the first EntityId is greater than the second. |
| Unknown operator | Determines whether the first EntityId is less than or equal to the second. |
| Unknown operator | Determines whether the first EntityId is greater than or equal to the second. |
