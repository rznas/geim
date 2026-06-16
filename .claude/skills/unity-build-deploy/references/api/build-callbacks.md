<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/build-callbacks.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Use build callbacks

You can implement build callbacks to insert custom behavior into the Player build process. Unity invokes these callbacks whether you trigger the Player build from the Build Profiles window, from a custom menu, or from a command line build. Build callbacks are useful when adding custom build behavior for a package used across different Unity projects.

## Supported callbacks

The following table lists the build callbacks that Unity supports:

| **Callback** | **Method** | **Description** |
| --- | --- | --- |
| `BuildPlayerProcessor` | `PrepareForBuild` | Add files and perform custom setup before the build starts. |
| `IPreprocessBuildWithContext` | `OnPreprocessBuild` | Called at the start of a build. |
| `IPostprocessBuildWithContext` | `OnPostprocessBuild` | Called at the end of the build. |
| `IFilterBuildAssemblies` | `OnFilterAssemblies` | Remove assemblies from the build. |
| `IPostBuildPlayerScriptDLLs` | `OnPostBuildPlayerScriptDLLs` | Read or patch managed assemblies after compilation. |
| `IProcessSceneWithReport` | `OnProcessScene` | Called while Unity processes each **scene** for the build. |
| `IPreprocessShaders` | `OnProcessShader` | Filter the list of **shader** variants to reduce shader build times. |
| `IPreprocessComputeShaders` | `OnProcessComputeShader` | Similar to `IPreprocessShaders` but intended for compute shaders. |
| `IUnityLinkerProcessor` | `GenerateAdditionalLinkXmlFile` | Configure the managed code stripping stage of a Player build. |
| `IPostprocessLaunch` | `OnPostprocessLaunch` | Called if the Player is launched as a final step of the build. |

Player builds support all these callbacks. Content-only builds, which don’t include managed assemblies, only invoke a subset: `IPreprocessBuildWithContext`, `IPostprocessBuildWithContext`, `IProcessSceneWithReport`, and `IPreprocessComputeShaders`.

## Callback ordering

You can use `IOrderedCallback.callbackOrder` to control the execution order of a build callback relative to other implementations of the same callback interface. Unity sorts the callbacks from lowest to highest order value, and you can assign any negative or positive integer value. For example, if your implementation of `IPreprocessBuildWithContext` has an order value of 2, it runs after another `IPreprocessBuildWithContext` callback that has an order value of 1.

## Build callbacks during incremental builds

The following build callbacks happen during the content step of a Player build:

- **Scene callbacks**: `IProcessSceneWithReport.OnProcessScene`
- **Shader callbacks**: `IPreprocessShaders.OnProcessShader`, `IPreprocessComputeShaders.OnProcessComputeShader`

When Unity reuses content from a previous build, it doesn’t trigger these callbacks again because they already ran during the previous build. Unity caches any content change caused by the callback in the output from the previous build.

To ensure that Unity runs a modified callback implementation, perform a clean build, or modify the content of one of the scenes or assets in the build.

Other build callbacks that run before or after the content stage might trigger again during incremental builds. These callbacks must handle running multiple times on the same build output. For example, if a callback adds entries to an Android app manifest, it must check if those entries already exist to avoid creating an invalid manifest file.

## Additional resources

- Customize the build pipeline
- Create a custom build script
- Create a clean build
