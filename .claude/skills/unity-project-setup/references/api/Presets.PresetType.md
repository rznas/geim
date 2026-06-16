<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Presets.PresetType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Stores a type to which a Preset can be applied.

Only classes that inherit from UnityEngine.Object are represented by a PresetType.

This structure is used instead of Type because some native C++ types in Unity are not exposed to managed C# for optimization reasons.

### Public Methods

| Method | Description |
| --- | --- |
| GetManagedTypeName | Retrieves a human readable namespace and the name of the target class, regardless of whether it's a managed C# class or a native C++ class. |
| IsValid | Checks whether a PresetType corresponds with a valid native or managed class. |
| IsValidDefault | Checks whether a PresetType can be used within the DefaultPreset system. |
