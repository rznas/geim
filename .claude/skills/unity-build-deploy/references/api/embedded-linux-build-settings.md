<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/embedded-linux-build-settings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Embedded Linux build settings reference

Use the Embedded Linux build settings to configure and build your application for the Embedded Linux platform. The Embedded Linux build settings are included in the **Platform Settings** section of the Build Profiles window.

| **Property** | **Description** |
| --- | --- |
| **Architecture** | Choose the CPU architecture to build for the Embedded Linux platform:   **x64**: 64-bit CPU  **arm64**: 64-bit ARM CPU |
| **Remote Device** | Deploy and launch the app to a connected device on a remote device based on the connection and authentication information you provide.   **Address (required)**: The address of the remote device. You can also specify a port by adding a colon after the address (for example, 10.110.91.3:2121).  **Username (optional)**: The user name on the remote device.  **Exports**: Specify the additional exports, if they’re required to launch the device remotely. Multiple environment variables are separated by a space. For example, `ENV_VAR1=1 ENV_VAR2=2`.  **Install Path**: The installation path for the application. If not set, the default value `~tmp/unity/test` will be used. |
| **Development Build** | Include scripting debug symbols and the Profiler in your build. Use this setting when you want to test your application. When you select this option, Unity sets the `DEVELOPMENT_BUILD` scripting define symbol. Your build then includes preprocessor directives that set `DEVELOPMENT_BUILD` as a condition.  For more information, refer to Platform dependent compilation. |
| **Autoconnect Profiler** | Automatically connect the Unity Profiler to your build. For more information, refer to Profiler.  **Note**: This option is available only if you select **Development Build**. |
| **Deep Profiling** | Allow the Profiler to process all your script code and record every function call, returning detailed profiling data. For more information, refer to Deep Profiling.   This property is available only if you enable **Development Build**.   **Note**: Enabling **Deep Profiling** might slow down script execution. |
| **Script Debugging** | Attach script debuggers to the Player remotely.   This property is available only if you enable **Development Build**. |
| **Wait for Managed Debugger** | Make the Player wait for a debugger to be attached before it executes any script code.  This property is visible only if you enable **Script Debugging**. |
| **Managed Debugger Fixed Port** | Choose the port for the managed debugger to use to listen to connections.  This property is available only if you enable **Script Debugging**. |
| **Compression Method** | Specifies the method Unity uses to compress the data in your Project when it builds the Player. This includes Assets, Scenes, Player settings, and GI data.   **Default**: On Windows, Mac, Linux Standalone, and iOS, there’s no default compression. On Android, the default compression is ZIP, which gives slightly better compression results than LZ4HC. However, ZIP data is slower to decompress.  **LZ4**: A fast compression format that is useful for development builds. For more information, refer to BuildOptions.CompressWithLz4.  **LZ4HC**: A high compression variant of LZ4 that is slower to build but produces better results for release builds. For more information, refer to BuildOptions.CompressWithLz4HC. |

## Additional resources

- Build profiles
- Build and deliver for Embedded Linux
- Project Settings
