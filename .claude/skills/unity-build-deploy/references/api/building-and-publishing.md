<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/building-and-publishing.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Building and publishing

When you create a build of your application, you create a Player. A Player is the platform-specific runtime application that Unity builds from your project. You can control how Unity creates a build through Unity’s build and player settings.

| **Topic** | **Description** |
| --- | --- |
| **Introduction to building** | Understand the fundamentals of Unity’s build process, including build modes, incremental building, and platform compatibility. |
| **Content output of a build** | Information about the files that Unity creates when you make a build of your project. |
| **Create a build from the Editor** | Use **build profiles** to build your application for different platforms with unique build configurations. |
| **Create a clean build** | Rebuild all content from scratch without using cached results to resolve build cache issues. |
| **Create a scripts-only build** | Build only the scripting assemblies without processing **scenes** and assets for faster iteration during development. |
| **Customize the build pipeline** | Create custom **scripts** and use callbacks to customize the build pipeline and run it from the command line. |
| **Include additional files in a build** | Use the StreamingAssets folder to include additional files in a build. |
| **Reducing the file size of a build** | Tips to reduce the size of the build. |
| **Deterministic builds** | Create consistent, reproducible builds by controlling factors that can cause build variations. |
| **Build cache location reference** | Reference for where Unity stores build cache files on different operating systems. |

## Additional resources

- `BuildPipeline` API reference
- `BuildReport` API reference
- Player settings
- Platform-specific Player settings
- Command line arguments
- Managing assets at runtime
- [Unity Build Automation](https://unity.com/solutions/ci-cd)
