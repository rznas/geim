<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Compilation.CompilationPipeline.GetAssemblyDefinitionFilePathFromAssemblyReference.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| reference | The assembly definition file GUID or assembly name reference. |

### Returns

**string** The file path of the given assembly definition file.

### Description

Returns the assembly definition file path for an Assembly Definition File GUID or assembly name reference. Returns null if there is no assembly definition file for the given assembly reference.

This utilty method should be used instead of CompilationPipeline.GetAssemblyDefinitionFilePathFromAssemblyName for Assembly Definition File references, as it supports both assembly name and GUID based references.
