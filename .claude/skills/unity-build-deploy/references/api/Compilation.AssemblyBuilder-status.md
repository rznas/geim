<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Compilation.AssemblyBuilder-status.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Current status of assembly build. (Read Only)

Returns AssemblyBuilderStatus.NotStarted before AssemblyBuilder.Build has been called. 
 Returns AssemblyBuilderStatus.IsCompiling during build and AssemblyBuilderStatus.Finished once the build finishes.

Accessing this property in a loop on the main thread until it returns AssemblyBuilderStatus.Finished is allowed. This will block the main thread until the build finishes.

Additional resources: AssemblyBuilder.Build.
