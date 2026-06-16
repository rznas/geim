<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextureMipmapLimitGroups.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Script interface for texture mipmap limit groups.

Use this class to add, remove or detect texture mipmap limit groups in C#.

Additional resources: TextureMipmapLimitSettings, QualitySettings.globalTextureMipmapLimit.

### Static Methods

| Method | Description |
| --- | --- |
| CreateGroup | (Editor Only) Attempts to create a texture mipmap limit group with the indicated groupName. |
| GetGroups | Retrieves a string array containing the name of all texture mipmap limit groups available in the project. |
| HasGroup | Checks whether a texture mipmap limit group with the indicated groupName exists in the project. This operation fails and throws an exception if groupName is null. |
| RemoveGroup | (Editor Only) Attempts to remove a texture mipmap limit group with the indicated groupName. |
