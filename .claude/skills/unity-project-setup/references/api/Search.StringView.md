<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.StringView.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Structure that holds a view on a string, with a specified range of [startIndex, endIndex[.

A StringView contains only a reference to the original string, a start and an end index. It can be used to quickly create substrings or do any other operations that would return a contiguous subset of the original string, without actually copying the data.

### Static Properties

| Property | Description |
| --- | --- |
| empty | An empty StringView. |
| nil | A null StringView. |

### Properties

| Property | Description |
| --- | --- |
| baseString | The base string which this StringView references. |
| endIndex | The end index. |
| length | The length of this StringView. |
| startIndex | The start index. |
| this[int] | Gets the character at a specified position in the current StringView. |
| valid | Boolean indicating if the StringView is valid. |

### Constructors

| Constructor | Description |
| --- | --- |
| StringView | Constructs a StringView over an entire string. |

### Public Methods

| Method | Description |
| --- | --- |
| Contains | Checks if a character is contained in the StringView. |
| EndsWith | Checks if the StringView ends with the character c. |
| Equals | Checks if the StringView is equal to the object. |
| GetEnumerator | Gets a character enumerator over this StringView. |
| GetHashCode | Gets the hashcode of this StringView. |
| IndexOf | Returns the index of the first occurence of another StringView within this one. |
| LastIndexOf | Returns the index of the last occurence of another StringView within this one. |
| StartsWith | Checks if the StringView starts with the character c. |
| Substring | Returns a substring of the current StringView, starting at index start and until the end of the StringView. |
| ToString | Converts the current StringView into a string. |
| Trim | Returns a new StringView in which all leading and trailing occurrences of a set of specified characters from the current StringView are removed. |

### Operators

| Operator | Description |
| --- | --- |
| bool | Implicit boolean conversion operator. |
| operator != | The not equals operator. |
| operator == | The equals operator. |
