<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Compilation.AssemblyBuilder-additionalReferences.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Additional assembly references passed to compilation of the assembly.

By default the same references that are added to scripts inside the Assets folder are added the assembly build. This property allows to add additional references. References paths are relative to project root and must include full filename with .dll extension.

The default references are in part controlled by AssemblyBuilder.flags, AssemblyBuilder.buildTarget and AssemblyBuilder.buildTargetGroup.

Additional resources: AssemblyBuilder.defaultReferences.
