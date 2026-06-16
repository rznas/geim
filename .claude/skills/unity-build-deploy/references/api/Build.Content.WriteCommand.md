<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.Content.WriteCommand.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Container for holding information about a serialized file to be written.

Note: this class and its members exist to provide low-level support for the **Scriptable Build Pipeline** package. This is intended for internal use only; use the Scriptable Build Pipeline package to implement a fully featured build pipeline. You can install this via the Unity Package Manager.

### Properties

| Property | Description |
| --- | --- |
| fileName | Final file name on disk of the serialized file. |
| internalName | Internal name used by the loading system for a serialized file. |
| serializeObjects | List of objects and their order contained inside a serialized file. |

### Constructors

| Constructor | Description |
| --- | --- |
| WriteCommand | Default constructor for an empty WriteCommand. |
