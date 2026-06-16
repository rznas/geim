<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/build-path-requirements.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Platform build path reference

When you build a Player from **scripts**, or using command-line arguments, you must specify the path for the build location. For certain platforms, this path must also include the build file extension specific to the platform.

The following table lists the platforms that require you to include build file extensions:

| **Platform** | **Build file extension** |
| --- | --- |
| **Android** | **Android Package**: `.apk`   **Android App Bundle**: `.aab`   **Note**: The file extension isn’t required for the following conditions: When building a Gradle project using **Export Project** build setting.  When building the Android App Bundle using **Export for App Bundle** build setting. Instead, specify the folder name for the exported Gradle project or Android App Bundle in the build path. |
| **Windows (Standalone and Server)** | `.exe`  **Note**: The file extension isn’t required when generating a Visual Studio Solution using the **Create Visual Studio Solution** build setting. Instead, specify the folder name for the generated Visual Studio Solution in the build path. |
| **macOS (Standalone)** | `.app`  **Note**: The file extension isn’t required when generating an Xcode project using the **Create Xcode Project** build setting. Instead, specify the folder name for the generated Xcode project in the build path. |
| **Linux (Standalone and Server)** | `.x86_64` |

## Additional resources

- `BuildPipeline.BuildPlayer` API reference
- Command-line arguments
