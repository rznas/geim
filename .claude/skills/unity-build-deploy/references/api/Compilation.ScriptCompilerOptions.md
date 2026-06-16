<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Compilation.ScriptCompilerOptions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Compiler options passed to the script compiler.

### Properties

| Property | Description |
| --- | --- |
| AdditionalCompilerArguments | Additional compiler arguments. |
| AllowUnsafeCode | Allow 'unsafe' code when compiling scripts. |
| AnalyzerConfigPath | Stores the path to the Roslyn global config file. |
| ApiCompatibilityLevel | ApiCompatibilityLevel for a given Assembly. |
| CodeOptimization | Indicates whether performance optimization is enabled for the assembly |
| EditorAssembliesCompatibilityLevel | EditorAssembliesCompatibilityLevel for Editor Assemblies. |
| LanguageVersion | String representation of the language version being used to compile the current Assembly. |
| ResponseFiles | Array of path to the response files that affects the current compilation. |
| RoslynAdditionalFilePaths | Array of strings representing the paths of any additional files defined for Roslyn analyzers in the current assembly. |
| RoslynAnalyzerDllPaths | Stores the paths to the .dll files. |
| RoslynAnalyzerRulesetPath | Stores the path to the Roslyn ruleset file. |

### Constructors

| Constructor | Description |
| --- | --- |
| ScriptCompilerOptions | Creates ScriptCompilerOptions with default values used for script compilation. |
