<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.Content.BuildReferenceMap.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Container for holding information about where objects will be serialized in a build.

This class helps ensure that Object references can be correctly resolved in the final built data.

Note: this class and its members exist to provide low-level support for the **Scriptable Build Pipeline** package. This is intended for internal use only; use the Scriptable Build Pipeline package to implement a fully featured build pipeline. You can install this via the Unity Package Manager.

### Constructors

| Constructor | Description |
| --- | --- |
| BuildReferenceMap | Default constructor for an empty BuildReferenceMap. |

### Public Methods

| Method | Description |
| --- | --- |
| AddMapping | Adds a mapping for a single Object to where it will be serialized out to the build. |
| AddMappings | Adds mappings for a set of Objects to where they will be serialized out to the build. |
| Dispose | Dispose the BuildReferenceMap destroying all internal state. |
| Equals | Returns true if the objects are equal. |
| FilterToSubset | Filters this BuildReferenceMap instance to remove references to any objects that are not in the array of ObjectIdentifiers specified by objectIds. |
| GetHash128 | Gets the hash for the BuildReferenceMap. |
| GetHashCode | Gets the hash code for the BuildReferenceMap. |
| GetObjectData | ISerializable method for serialization support outside of Unity's internal serialization system. |
