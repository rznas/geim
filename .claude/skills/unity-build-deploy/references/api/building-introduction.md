<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/building-introduction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Introduction to building

When you create a build of your application, you create a Player. A Player is the platform-specific runtime application that Unity builds from your project. This is also known as a **project build**, which is the workflow of building a project from the Unity Editor into an application that runs on a target platform.

Building a Player for a target platform requires the platform-specific build support module for the target platform. You can add build support for a target platform when you install Unity, or add it when you create a Build Profile.

Unity uses the **scenes** you define in the Build Profiles window or the `BuildPipeline` API to create a build of a Player. For more information, refer to Manage scenes in a build.

## Build modes

Unity has different build modes, as follows:

- **Release** build: Includes only what’s necessary to run the application. This is the default build type.
- **Development** build: Includes scripting debug symbols and the Profiler. You can enable **development builds** in the Build Profiles window, which allows you to set further options such as deep profiling support and script debugging. You can also use the `BuildOptions.Development` property to set a development build.

Both build modes provide options to build different variations of the Player application for different hardware architectures and scripting backends. You can customize these variations through the build settings, Player settings, or command-line flags.

## Incremental build pipeline

Unity uses an incremental build pipeline that only rebuilds the parts of your application that have changed since the last build, which helps speed up development iteration time. This build process includes build steps such as content building, code compilation, data **compression**, and signing.

By default, Unity uses the incremental build pipeline for both development and release builds. You can use the options in the **Build Profiles** window, or use the `BuildOptions.CleanBuildCache` API to create a non-incremental build, also known as a clean build. For more information, refer to Creating clean builds.

**Note:** AssetBundles don’t use the incremental build pipeline and have separate mechanisms for caching and reusing the results from previous builds. For more information, refer to Build assets into an AssetBundle.

## Additional resources

- Build Profiles
- Create a Build Profile
- Build Profiles window reference
- Player settings
- Create a clean build
