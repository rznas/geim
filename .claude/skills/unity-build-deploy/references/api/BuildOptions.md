<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BuildOptions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options to configure a build. You can combine multiple build options together.

Additional resources: BuildPipeline.BuildPlayer.

```csharp
using UnityEditor;
using UnityEngine;public class EditorExample : MonoBehaviour
{
    [MenuItem("Build/Build scripts")]
    public static void MyBuild()
    {
        BuildPlayerOptions buildPlayerOptions = new BuildPlayerOptions();
        buildPlayerOptions.scenes = new[] { "Assets/scene.unity" };
        buildPlayerOptions.locationPathName = "scriptBuilds";
        buildPlayerOptions.target = BuildTarget.StandaloneOSX;        // use these options for a development and strict mode build
        buildPlayerOptions.options = BuildOptions.Development | BuildOptions.StrictMode;        BuildPipeline.BuildPlayer(buildPlayerOptions);
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| None | Perform the specified build without any special settings or extra tasks. |
| Development | Build a development version of the Player. |
| AutoRunPlayer | Run the built Player. |
| ShowBuiltPlayer | Show the built Player. |
| BuildAdditionalStreamedScenes | For internal use |
| AcceptExternalModificationsToPlayer | Appends to an existing Xcode (iOS) project during the build process. |
| CleanBuildCache | Clear all cached build results, resulting in a full rebuild of all scripts and all player data. |
| ConnectWithProfiler | Start the Player with a connection to the Profiler in the Editor. |
| AllowDebugging | Allow script debuggers to attach to the Player remotely. You can debug your scripts only if you use BuildOptions.Development. |
| SymlinkSources | Symlink sources when generating the project. This is useful if you're changing source files inside the generated project and want to bring the changes back into your Unity project or a package. |
| UncompressedAssetBundle | Don't compress the data when creating the asset bundle. |
| ConnectToHost | Sets the Player to connect to the Editor. |
| CustomConnectionID | Determines if the player should be using the custom connection ID. |
| BuildScriptsOnly | Only build the scripts in a project. |
| PatchPackage | Patch a Development app package rather than completely rebuilding it.Supported only on Android platform. |
| ForceEnableAssertions | Include assertions in the build. By default, the assertions are only included in development builds. |
| CompressWithLz4 | Use chunk-based LZ4 compression when building the Player. |
| CompressWithLz4HC | Use chunk-based LZ4 high-compression when building the Player. |
| StrictMode | Prevent the build from succeeding if any errors are reported during the build process. |
| IncludeTestAssemblies | Build will include Assemblies for testing. |
| NoUniqueIdentifier | Will force the buildGUID to all zeros. |
| WaitForPlayerConnection | Sets the Player to wait for player connection on player start. |
| EnableCodeCoverage | Enables code coverage. You can use this as a complimentary way of enabling code coverage on platforms that do not support command line arguments. |
| EnableDeepProfilingSupport | Enables Deep Profiling support in the Player. |
| DetailedBuildReport | Generates detailed information in the BuildReport. |
