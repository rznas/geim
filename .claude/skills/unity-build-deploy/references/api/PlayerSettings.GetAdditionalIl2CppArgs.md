<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.GetAdditionalIl2CppArgs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**string** Additional arguments passed to the IL2CPP compiler during the build process.

### Description

Obtain the additional arguments passed to the IL2CPP compiler during the player build process.

Returns a string of the additional arguments set for an IL2CPP build. The Unity editor normally passes a number of command line arguments to IL2CPP as part of the build process. This method returns any additional arguments that have been provided via the SetAdditionalIl2CppArgs method.

This method is only useful for advanced uses cases. For most projects, there is no need to add provide to IL2CPP with additional arguments.
