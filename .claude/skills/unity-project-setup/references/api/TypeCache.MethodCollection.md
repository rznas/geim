<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TypeCache.MethodCollection.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a read-only collection of MethodInfo and implements an IList interface.

**Note:** All *IList* methods which might alter the collection always throw *NotSupportedException*.

### Properties

| Property | Description |
| --- | --- |
| Count | The number of elements in MethodCollection. |
| IsFixedSize | Whether the MethodCollection is of a fixed size. This property is always set to true. |
| IsReadOnly | Whether the MethodCollection is read-only. This property is always set to true. |
| IsSynchronized | Whether the MethodCollection is synchronized. This property is always set to true. |
| this[int] | Gets the element at the specified index. |

### Public Methods

| Method | Description |
| --- | --- |
| Contains | Determines whether an element is in the MethodCollection. |
| CopyTo | Copies the collection to an array. |
| GetEnumerator | Gets an enumerator that iterates through a MethodCollection. |
| IndexOf | Gets the first occurrence of an item in the MethodCollection. |
