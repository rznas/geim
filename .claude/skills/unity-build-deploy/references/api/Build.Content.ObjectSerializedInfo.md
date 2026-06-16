<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.Content.ObjectSerializedInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Struct containing details about how an object was serialized.

Note: this struct and its members exist to provide low-level support for the **Scriptable Build Pipeline** package. This is intended for internal use only; use the Scriptable Build Pipeline package to implement a fully featured build pipeline. You can install this via the Unity Package Manager.

### Properties

| Property | Description |
| --- | --- |
| header | Serialized object header information. |
| rawData | Raw byte data of the object if it was serialized seperately from the header. |
| serializedObject | Object that was serialized. |
