<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Compilation.CompilationPipeline.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Methods and properties for script compilation pipeline.

### Static Properties

| Property | Description |
| --- | --- |
| codeOptimization | Current code optimization mode. |

### Static Methods

| Method | Description |
| --- | --- |
| AssemblyDefinitionReferenceGUIDToGUID | Converts an assembly definition file GUID reference to a GUID string. |
| GetAssemblies | Get all script assemblies compiled by Unity filtered by AssembliesType. |
| GetAssemblyDefinitionFilePathFromAssemblyName | Returns the assembly definition file path from an assembly name. Returns null if there is no assembly definition file for the given assembly name. |
| GetAssemblyDefinitionFilePathFromAssemblyReference | Returns the assembly definition file path for an Assembly Definition File GUID or assembly name reference. Returns null if there is no assembly definition file for the given assembly reference. |
| GetAssemblyDefinitionFilePathFromScriptPath | Returns the assembly definition file path for a source (script) path. Returns null if there is no assembly definition file for the given script path. |
| GetAssemblyDefinitionPlatforms | Returns all the platforms supported by assembly definition files.Additional resources: AssemblyDefinitionPlatform. |
| GetAssemblyDefinitionReferenceType | Utility method to determine whether an Assembly Definition File reference is a GUID reference or an assembly name reference. |
| GetAssemblyNameFromScriptPath | Returns the assembly name for a source (script) path. Returns null if there is no assembly name for the given script path. |
| GetAssemblyRootNamespaceFromScriptPath | Gets the root namespace associated with the given script path. |
| GetDefinesFromAssemblyName | Lists all the #define directives used to compile the specified assembly. |
| GetPrecompiledAssemblyNames | Get all precompiled assembly names. |
| GetPrecompiledAssemblyPathFromAssemblyName | Returns the Assembly file path from an assembly name. Returns null if there is no Precompiled Assembly name match. |
| GetPrecompiledAssemblyPaths | Returns the paths to the precompiled assemblies which are included when building editor assemblies and match any of the given PrecompiledAssemblySources. |
| GetResponseFileDefinesFromAssemblyName | Lists all the #define directives used to compile the specified assembly, that is from a Response File. |
| GetSystemAssemblyDirectories | Use this to get a list of directories containing system references for the specific ApiCompatibilityLevel. |
| GUIDToAssemblyDefinitionReferenceGUID | Converts the given GUID to an assembly definition file GUID reference. |
| IsDefineConstraintsCompatible | Allows you to test whether the specified #define constraints are satisfied by the specified list of #define directives. |
| ParseResponseFile | Retrieves the ResponseFileData describing the content of the response file. |
| RequestScriptCompilation | Allows you to request that the Editor recompile scripts in the project. |

### Events

| Event | Description |
| --- | --- |
| assemblyCompilationFinished | An event that is invoked on the main thread when compilation of an assembly finishes. |
| assemblyCompilationNotRequired | An event that is invoked on the main thread when an assembly does not require compilation. |
| assemblyCompilationStarted | An event that is invoked on the main thread when the assembly build starts. |
| codeOptimizationChanged | This event triggers whenever the codeOptimization property changes between Debug and Release modes. |
| compilationFinished | An event that is invoked on the main thread when the compilation of assemblies finishes. |
| compilationStarted | An event that is invoked on the main thread when the compilation of assemblies starts. |
