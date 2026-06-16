<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/BuildSettingsiOS.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# iOS build settings reference

Use the iOS build settings to configure and build your application for iOS devices. The iOS build settings are part of the Build Profiles window.

| **Property** | **Description** |
| --- | --- |
| **Run in Xcode** | Select the Xcode version to open your project with. You can choose the **Latest version** or select a specific version from the drop-down list.  If you have a specific Xcode version installed on your machine that doesn’t appear in this list, select **Other** to find the version in the **Applications** window that appears. If Unity can’t find an Xcode installation on your computer, select the **Browse** button to locate the Xcode installation directory on your computer.   **Note**: This option is visible only when you run Unity on macOS. |
| **Run in Xcode as** | Select whether Xcode runs your Project as a **Release** or **Debug** build.   **Release**: Builds an optimized version of your app.  **Debug**: Builds a testing version of your app that contains additional code that helps with debugging. |
| **Symlink Sources** | References Unity libraries instead of copying them into the Xcode project. This option reduces the Xcode project size and makes iteration times faster. |
| **Development Build** | Include scripting debug symbols and the Profiler in your build. Use this setting when you want to test your application. When you select this option, Unity sets the `DEVELOPMENT_BUILD` scripting define symbol. Your build then includes preprocessor directives that set `DEVELOPMENT_BUILD` as a condition.  For more information, refer to Platform dependent compilation. |
| **Autoconnect Profiler** | Automatically connect the Unity Profiler to your build. For more information, refer to Profiler.  **Note**: This option is available only if you select **Development Build**. |
| **Deep Profiling** | Allow the Profiler to process all your script code and record every function call, returning detailed profiling data. For more information, refer to Deep Profiling.   This property is available only if you enable **Development Build**.   **Note**: Enabling **Deep Profiling** might slow down script execution. |
| **Script Debugging** | Attach script debuggers to the Player remotely.   This property is available only if you enable **Development Build**. |
| **Wait for Managed Debugger** | Make the Player wait for a debugger to be attached before it executes any script code.  This property is visible only if you enable **Script Debugging**. |
| **Compression Method** | Specifies the method Unity uses to compress the data in your Project when it builds the Player. This includes Assets, Scenes, Player settings, and GI data.   **Default**: On Windows, Mac, Linux Standalone, and iOS, there’s no default compression. On Android, the default compression is ZIP, which gives slightly better compression results than LZ4HC. However, ZIP data is slower to decompress.  **LZ4**: A fast compression format that is useful for development builds. For more information, refer to BuildOptions.CompressWithLz4.  **LZ4HC**: A high compression variant of LZ4 that is slower to build but produces better results for release builds. For more information, refer to BuildOptions.CompressWithLz4HC. |

## Additional resources

- Build profiles
- Build an iOS application
- BuildOptions Scripting API reference
