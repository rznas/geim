<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PropertyName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a string as an int for efficient lookup and comparison. Use this for common PropertyNames.

Internally stores just an int to represent the string. A PropertyName can be created from a string but can not be converted back to a string. The same string always results in the same int representing that string. Thus this is a very efficient string representation in both memory and speed when all you need is comparison.

PropertyName is serializable.

ToString() is only implemented for debugging purposes in the editor it returns "theName:3737" in the player it returns "Unknown:3737".

### Constructors

| Constructor | Description |
| --- | --- |
| PropertyName | Initializes the PropertyName using a string. |

### Public Methods

| Method | Description |
| --- | --- |
| Equals | Determines whether this instance and a specified object, which must also be a PropertyName object, have the same value. |
| GetHashCode | Returns the underlying int as a hash code for this PropertyName. Use GetHashCode to use PropertyName as keys in hash tables. |
| ToString | For debugging purposes only. Returns the string value representing the string in the Editor. Returns "UnityEngine.PropertyName" in the player. |

### Static Methods

| Method | Description |
| --- | --- |
| IsNullOrEmpty | Indicates whether the specified PropertyName is an Empty string. |

### Operators

| Operator | Description |
| --- | --- |
| operator != | Determines whether two specified PropertyName have a different string value. |
| operator == | Determines whether two specified PropertyName have the same string value. Because two PropertyNames initialized with the same string value always have the same name index, we can simply perform a comparison of two ints to find out if the string value equals. |
| PropertyName | Converts the string passed into a PropertyName. Additional resources: PropertyName.ctor(System.String). |
