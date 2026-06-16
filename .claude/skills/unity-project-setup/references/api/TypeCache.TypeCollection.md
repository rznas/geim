<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TypeCache.TypeCollection.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a read-only collection of Type and implements an IList interface.

**Note:** All *IList* methods which might alter the collection always throw *NotSupportedException*.

### Properties

| Property | Description |
| --- | --- |
| Count | The number of elements in TypeCollection. |
| IsFixedSize | Whether the TypeCollection is of a fixed size. This property is always set to true. |
| IsReadOnly | Whether the TypeCollection is read-only. This property is always set to true. |
| IsSynchronized | Whether the TypeCollection is synchronized. This property is always set to true. |
| this[int] | Gets the element at the specified index. |

### Public Methods

| Method | Description |
| --- | --- |
| Contains | Determines whether an element is in the TypeCollection. |
| CopyTo | Copies the collection to an array. |
| GetEnumerator | Gets an enumerator that iterates through the TypeCollection. |
| IndexOf | Gets the first occurrence of an item in the TypeCollection. |
