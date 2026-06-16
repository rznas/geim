<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Compilation.Assembly.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Class that represents an assembly compiled by Unity.

### Properties

| Property | Description |
| --- | --- |
| allReferences | Returns Assembly.assemblyReferences and Assembly.compiledAssemblyReferences combined.This returns all assemblies that are passed to the compiler when building this assembly,. |
| assemblyReferences | Assembly references used to build this assembly.The references are also assemblies built as part of the Unity project.Additional resources: Assembly.compiledAssemblyReferences and Assembly.allReferences. |
| compiledAssemblyReferences | Assembly references to pre-compiled assemblies that used to build this assembly.Additional resources: Assembly.assemblyReferences and Assembly.allReferences. |
| compilerOptions | Compiler options used to compile the assembly. |
| defines | The defines used to compile this assembly. |
| flags | Flags for the assembly.Additional resources: AssemblyFlags. |
| name | The name of the assembly. |
| outputPath | The full output file path of this assembly. |
| rootNamespace | Sets the root namespace of the assembly. |
| sourceFiles | All the souce files used to compile this assembly. |

### Constructors

| Constructor | Description |
| --- | --- |
| Assembly | Constructor. |
