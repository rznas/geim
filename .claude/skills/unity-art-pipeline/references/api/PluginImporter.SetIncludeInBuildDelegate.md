<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PluginImporter.SetIncludeInBuildDelegate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets the delegate function to be called by ShouldIncludeInBuild.

The delegate is called by PluginImporter.ShouldIncludeInBuild and returns true if the plugin is to be included in the build, and false otherwise.

 **Important**: The build pipeline supports `SetIncludeInBuildDelegate` both for builds triggered from the Editor UI and those made from code with the BuildPipeline APIs. However, take extra care when building from scripts with BuildPipeline to make sure your build code is running in the right context. Script-based builds can encounter problems if they're running for a different build target than the currently active one. When building from a script, Unity can't recompile and reload assemblies to match the script's target, so the build script continues to run for the active target. If `SetIncludeInBuildDelegate` appears not to work in your build scripts, double-check that the delegate is being set early enough and on the right PluginImporter instance. Also make sure that any platform-specific, conditionally-compiled code is being executed as expected in the current context. For more information, refer to Create a custom build script.
