<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Compilation.CompilationPipeline.RequestScriptCompilation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| options | Optional parameter to specify whether the Editor should clear the build cache before compilation. |

### Description

Allows you to request that the Editor recompile scripts in the project.

When you call this method, the Unity Editor checks whether there have been any changes to scripts, or to settings affecting script compilation, and recompiles those scripts which require it.

After the compilation, if the compilation was successful, the Editor reloads all assemblies. If you want to force recompilation of all scripts, even if there are no changes, you can pass RequestScriptCompilationOptions.CleanBuildCache for the options parameter.

You might want to force recompilation of all scripts in the following situations:

- If you have a successful compilation, but want to see all compiler warnings again.
- If you have a setup where the compilation pipeline takes input from files that Unity cannot track (this is possible in rare circumstances when using response files).
- If there is a bug or suspected bug in the compilation pipeline causing it to not pick up changes.
