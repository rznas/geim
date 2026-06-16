<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.Content.BuildUsageTagSet.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Container for holding information about how objects are being used in a build.

This class helps ensure the correct Shared Variants, Mesh Channels, and more are included in the build correctly.

Note: this class and its members exist to provide low-level support for the **Scriptable Build Pipeline** package. This is intended for internal use only; use the Scriptable Build Pipeline package to implement a fully featured build pipeline. You can install this via the Unity Package Manager.

### Constructors

| Constructor | Description |
| --- | --- |
| BuildUsageTagSet | Default constructor for an empty BuildUsageTagSet. |

### Public Methods

| Method | Description |
| --- | --- |
| Dispose | Dispose the BuildUsageTagSet destroying all internal state. |
| Equals | Returns true if the objects are equal. |
| FilterToSubset | Filters this BuildUsageTagSet instance to remove references to any objects that are not in the array of ObjectIdentifiers specified by objectIds. |
| GetHash128 | Gets the hash for the BuildReferenceMap. |
| GetHashCode | Gets the hash code for the BuildUsageTagSet. |
| GetObjectData | ISerializable method for serialization support outside of Unity's internal serialization system. |
| GetObjectIdentifiers | Returns an array of ObjectIdentifiers that this BuildUsageTagSet contains usage information about. |
| UnionWith | Adds the Object usage information from another BuildUsageTagSet to this BuildUsageTagSet. |
