<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.Content.ObjectIdentifier.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Struct that identifies a specific object project wide.

Note: this struct and its members exist to provide low-level support for the **Scriptable Build Pipeline** package. This is intended for internal use only; use the Scriptable Build Pipeline package to implement a fully featured build pipeline. You can install this via the Unity Package Manager.

### Properties

| Property | Description |
| --- | --- |
| filePath | The file path on disk that contains this object. (Only used for objects not known by the AssetDatabase). |
| fileType | Type of file that contains this object. |
| guid | The specific asset that contains this object. |
| localIdentifierInFile | The index of the object inside a serialized file. |

### Public Methods

| Method | Description |
| --- | --- |
| CompareTo | Implements the IComparable interface. |
| Equals | Returns true if the objects are equal. |
| GetHashCode | Gets the hash code for the ObjectIdentifier. |
| ToString | Returns a nicely formatted string for this ObjectIdentifier. |

### Static Methods

| Method | Description |
| --- | --- |
| ToEntityId | Tries to return the EntityId that represents this ObjectIdentifier. |
| ToObject | Tries to find, load, and return the Object that represents this ObjectIdentifier. |
| TryGetObjectIdentifier | Tries to convert a persistent Object into an ObjectIdentifier. |

### Operators

| Operator | Description |
| --- | --- |
| operator != | Returns true if the ObjectIdentifiers are different. |
| operator < | Returns true if the first ObjectIdentifier is less than the second ObjectIdentifier. |
| operator == | Returns true if the ObjectIdentifiers are the same. |
| operator > | Returns true if the first ObjectIdentifier is greater than the second ObjectIdentifier. |
