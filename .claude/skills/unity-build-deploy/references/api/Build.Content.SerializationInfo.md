<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.Content.SerializationInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Container for holding object serialization order information for a build.

Note: this class and its members exist to provide low-level support for the **Scriptable Build Pipeline** package. This is intended for internal use only; use the Scriptable Build Pipeline package to implement a fully featured build pipeline. You can install this via the Unity Package Manager.

### Properties

| Property | Description |
| --- | --- |
| serializationIndex | Order in which the object will be serialized to disk. |
| serializationObject | Source object to be serialzied to disk. |

### Constructors

| Constructor | Description |
| --- | --- |
| SerializationInfo | Default constructor for an empty SerializationInfo. |
