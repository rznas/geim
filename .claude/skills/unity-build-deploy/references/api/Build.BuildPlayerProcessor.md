<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.BuildPlayerProcessor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Extend BuildPlayerProcessor to receive callbacks during a Player build.

Add files and perform custom setup before the build starts. For more information, refer to Use build callbacks. Additional resources: IFilterBuildAssemblies, IPostBuildPlayerScriptDLLs, IUnityLinkerProcessor, IPreprocessBuildWithContext, IPostprocessBuildWithContext.

### Properties

| Property | Description |
| --- | --- |
| callbackOrder | Returns the relative callback order for callbacks. Callbacks with lower values are called before ones with higher values. |

### Public Methods

| Method | Description |
| --- | --- |
| PrepareForBuild | Implement this function to receive a callback before a Player build starts. |
