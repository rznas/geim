<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Compilation.CompilationPipeline.PrecompiledAssemblySources.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies the sources of precompiled assemblies referenced during compilation.

This enumeration has a FlagsAttribute attribute that allows a bitwise combination of its member values.

### Properties

| Property | Description |
| --- | --- |
| UserAssembly | Matches precompiled assemblies present in the project and packages. |
| UnityEngine | Matches UnityEngine and runtime module assemblies. |
| UnityEditor | Matches UnityEditor and editor module assemblies. |
| SystemAssembly | Matches assemblies supplied by the target framework. |
| UnityAssembly | Matches any Unity assemblies. |
| All | Matches all assembly sources. |
