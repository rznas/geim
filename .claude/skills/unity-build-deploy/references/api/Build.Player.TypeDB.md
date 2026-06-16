<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.Player.TypeDB.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Container for holding information about script type and property data.

This class helps ensure the correct fields are serialized out for content builds.

Note: this class and its members exist to provide low-level support for the **Scriptable Build Pipeline** package. This is intended for internal use only; use the Scriptable Build Pipeline package to implement a fully featured build pipeline. You can install this via the Unity Package Manager.

### Public Methods

| Method | Description |
| --- | --- |
| Dispose | Dispose the TypeDB destroying all internal state. |
| Equals | Returns true if the objects are equal. |
| GetHash128 | Gets the hash for the BuildReferenceMap. |
| GetHashCode | Gets the hash code for the TypeDB. |
| GetObjectData | ISerializable method for serialization support outside of Unity's internal serialization system. |
