<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.BuildPipelineContext.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines the build context for IProcessSceneWithReport during a build event.

This class contains static methods for declaring additional scene dependencies for the build system. These dependencies are used to trigger scene rebuilds in cases where dependencies are not explicit in the scene itself.

 For example, if the implementation of IProcessSceneWithReport loads an Asset programmatically then BuildPipelineContext.DependOnAsset should be called, unless the same Asset is also referenced by the Scene. Then, if the Asset is changed and the build run again, Unity will retrigger the callback and save the latest scene state instead of reusing an out-of-date cached result.

 Dependency tracking is currently only required when EditorBuildSettings.UseParallelAssetBundleBuilding is true, for calls to BuildPipeline.BuildAssetBundles. It does not currently apply to BuildPipeline.BuildPlayer.

 Additional resources: AssetDatabase.LoadAssetAtPath

### Static Methods

| Method | Description |
| --- | --- |
| DependOnAsset | Allows you to specify that a Scene depends on contents of an asset directly provided. |
| DependOnPath | Allows you to specify that a Scene depends on contents of a source asset at the provided path. |
