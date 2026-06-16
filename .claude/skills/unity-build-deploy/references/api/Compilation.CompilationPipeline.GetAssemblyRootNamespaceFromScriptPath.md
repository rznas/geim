<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Compilation.CompilationPipeline.GetAssemblyRootNamespaceFromScriptPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| sourceFilePath | Source (script) file path. |

### Returns

**string** Returns the root namespace for the given script. If there is no root namespace defined for the script, it returns null.

### Description

Gets the root namespace associated with the given script path.

This method gets the root namespace associated with the given script path. If there is an assembly definition file associated to the given script, the root namespace defined is returned, otherwise the C# project Root Namespace in project settings is returned.
