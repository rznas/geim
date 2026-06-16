<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Compilation.CompilationPipeline.GetResponseFileDefinesFromAssemblyName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assemblyName | The name of the assembly without the extension. |

### Returns

**string[]** A string array of #define directives declared for the assembly. Returns null if the assembly is not found.

### Description

Lists all the #define directives used to compile the specified assembly, that is from a Response File.

Additional resources: Assembly, CompilationPipeline.
