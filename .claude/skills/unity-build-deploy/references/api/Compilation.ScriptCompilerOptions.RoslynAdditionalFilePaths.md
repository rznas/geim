<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Compilation.ScriptCompilerOptions.RoslynAdditionalFilePaths.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Array of strings representing the paths of any additional files defined for Roslyn analyzers in the current assembly.

To define additional files for Roslyn analyzers and source generators to use, add them to the project `Assets` and name them in the format `Filename.[Analyzer Name].additionalfile`. The `[Analyzer Name]` component is case-sensitive and must match the name of the analyzer the additional file targets. The `Filename` component must not contain a period (`.`) character.

For more information, refer to Additional files for Roslyn analyzers and source generators.
