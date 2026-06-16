<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/dedicated-server-player-settings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Dedicated Server Player settings

The Player settings for the Dedicated Server Player are a subset of the Desktop target Player settings. For a description of the general Player settings, refer to Player Settings.

Due to the headless and server application nature of the Dedicated Server, only the options in the **Other Settings** section are applicable. The following options don’t apply:

- Icon
- Resolution and Presentation
- Splash Image
- Publishing Settings

## Other Settings

This section allows you to customize a range of options organized into the following groups:

- Configuration
- Shader Settings
- Shader Variant Loading Settings
- Script Compilation
- Optimization
- Stack Trace
- Legacy
- Capture Logs

### Configuration

| **Property** | **Description** |
| --- | --- |
| **Scripting Backend** | Choose the scripting backend you want to use. The scripting backend determines how Unity compiles and executes C# code in your Project.     **Mono**: Compiles C# code into .NET Common Intermediate Language (CIL) and executes that CIL using a Common Language Runtime. For more information, refer to Mono.  **IL2CPP**: Compiles C# code into CIL, converts the CIL to C++ and then compiles that C++ into native machine code, which executes directly at runtime. For more information, refer to IL2CPP. |
| **API Compatibility Level** | Choose which .NET APIs you can use in your project. This setting can affect compatibility with third-party libraries. However, it has no effect on Editor-specific code (code in an Editor directory, or within an Editor-specific Assembly Definition).  **Tip:** If you’re having problems with a third-party assembly, you can try the suggestion in the API Compatibility Level section.     **.Net Framework**: Compatible with the .NET Framework 4 (which includes everything in the .NET Standard 2.0 profile plus additional APIs). Choose this option when using libraries that access APIs not included in .NET Standard 2.0. Produces larger builds and any additional APIs available aren’t necessarily supported on all platforms. For more information, refer to Referencing additional class library assemblies.  **.Net Standard 2.1**: Produces smaller builds and has full cross-platform support. |
| **Editor Assemblies Compatibility Level** | Select which .NET APIs to use in your Editor assemblies.     **.NET Framework**: Compatible with the .NET Framework 4 (which includes everything in the .NET Standard 2.1 profile plus additional APIs). Choose this option when using libraries that access APIs not included in .NET Standard 2.1. Produces larger builds and any additional APIs available aren’t necessarily supported on all platforms. For more information, refer to Referencing additional class library assemblies.  **.NET Standard**: Compatible with [.NET Standard 2.1](https://docs.microsoft.com/en-us/dotnet/standard/net-standard). Produces smaller builds and has full cross-platform support. |
| **IL2CPP Code Generation** | Defines how Unity manages IL2CPP code generation. This option is only available if you use the IL2CPP scripting backend.     **Optimize for runtime speed**: Generates code optimized for runtime performance. This setting is enabled by default.  **Optimize for code size and build time**: Generates code optimized for build size and iteration. This setting generates less code and produces a smaller build, but can reduce runtime performance for generic code. Use this option when faster build times are important, such as when iterating on changes. |
| **C++ Compiler Configuration** | Choose the C++ compiler configuration used when compiling IL2CPP generated code.     **Debug**: The debug configuration turns off all optimizations, which makes the code quicker to build but slower to run.  **Release**: The release configuration enables optimizations so that the compiled code runs faster, the binary size is reduced, but compilation takes longer.  **Master**: Master configuration enables all possible optimizations, squeezing every bit of performance possible. For instance, on platforms that use the MSVC++ compiler, this option enables link-time code generation. Compiling code using this configuration can take significantly longer than it does using the Release configuration. The recommended best practice is to build the shipping version of your game using the Master configuration if the increase in build time is acceptable. |
| **IL2CPP Stacktrace Information** | Choose the information to include in a stack trace. For further details on the information types, refer to Managed stack traces with IL2CPP.     **Method Name**: Include each managed method in the stack trace.  **Method Name, File Name, and Line Number**: Include each managed method with file and line number information in the stack trace.    **Note**: Using this option can increase both the build time and final size of the built program. |
| **Use incremental GC** | Uses the incremental garbage collector, which spreads garbage collection over several frames to reduce garbage collection-related spikes in frame duration. For more information, refer to Automatic Memory Management. |
| **Allow downloads over HTTP** | Indicate whether to allow downloading content over HTTP. The default option is **Not allowed** due to the recommended protocol being HTTPS, which is more secure.     **Not Allowed**: Never allow downloads over HTTP.  **Allowed in Development Builds**: Only allow downloads over HTTP in development builds.  **Always Allowed**: Allow downloads over HTTP in development and release builds. |
| **Target minimum macOS version** | Specifies the minimum supported macOS version which is 10.13.0 |

#### API Compatibility Level

You can choose your mono API compatibility level for all targets. Sometimes a third-party .NET library uses functionality that’s outside of your .NET compatibility level. To understand what’s going on in such cases, and how to best fix it, try following these suggestions:

1. Install [ILSpy](https://www.microsoft.com/en-us/p/ilspy/9mxfbkfvsq13?cid=msft_web_chart&activetab=pivot:overviewtab) for Windows.
2. Drag the .NET assemblies for the API compatibility level that you are having issues with into ILSpy. You can find these under `Frameworks/Mono/lib/mono/YOURSUBSET/`.
3. Drag in your third-party assembly.
4. Right-click your third-party assembly and select **Analyze**.
5. In the analysis report, inspect the **Depends on** section. The report highlights anything that the third-party assembly depends on, but that’s not available in the .NET compatibility level of your choice in red.

### Shader Settings

| **Property** | **Description** |
| --- | --- |
| **Shader Precision Model** | Select the default precision shaders use. For more information, refer to Use 16-bit precision in shaders.     **Platform default**: Use lower precision on mobile platforms, and full precision on other platforms.  **Unified**: Use lower precision if the platform supports it. |
| **Strict shader variant matching** | Enable this option to use the error shader for rendering if a shader variant is missing in the Player build and display an error in the console. The error specifies the shader, subshader index, pass, and keywords used for shader variant search |
| **Keep Loaded Shaders Alive** | Keep all loaded shaders alive and prevent unloading. |

### Shader Variant Loading Settings

Use these settings to control how much memory **shaders** use at runtime.

| **Property** | **Description** |
| --- | --- |
| **Default chunk size (MB)** | Sets the maximum size of compressed shader variant data chunks Unity stores in your built application for all platforms. The default is `16`. For more information, refer to Shader loading. |
| **Default chunk count** | Sets the default limit on how many decompressed chunks Unity keeps in memory on all platforms. The default is `0`, which means there’s no limit. |
| **Override** | Enables overriding **Default chunk size** and **Default chunk count** for this build target. |
| **Chunk size (MB)** | Overrides the value of **Default chunk size (MB)** on this build target. |
| **Chunk count** | Overrides the value of **Default chunk count** on this build target. |

### Script Compilation

| **Property** | **Description** |
| --- | --- |
| **Scripting Define Symbols** | Sets custom compilation flags.    For more details, refer to Platform dependent compilation. |
| **Additional Compiler Arguments** | Specifies additional arguments to pass to the Roslyn C# compiler. Enter one valid compiler argument per list entry. To create a new entry, select **Add (+)**. To remove an entry, select **Remove (-)**. Select **Apply** to include newly added arguments in future compilations. Select **Revert** to reset the list to the most recent applied state. Arguments must use the `csc.exe` syntax, for example: `-warnaserror`. For the full list of supported Roslyn compiler options, refer to [C# compiler options](https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/compiler-options/) in the Microsoft documentation.  You can also supply additional command-line arguments to the C# compiler with a `csc.rsp` [response file](https://learn.microsoft.com/en-us/visualstudio/msbuild/msbuild-response-files?view=vs-2022) in your project’s `Assets` folder. For more information on creating a response file, refer to Creating a response file. **Note**: Defining the same arguments in both the **Additional Compiler Arguments** list and a response file can cause errors and unintended behavior. |
| **Suppress Common Warnings** | Indicates whether to display the C# warnings [CS0169](https://docs.microsoft.com/en-us/dotnet/csharp/misc/cs0169) and [CS0649](https://docs.microsoft.com/en-us/dotnet/csharp/misc/CS0649). |
| **Allow ‘unsafe’ Code** | Activate support for compiling [‘unsafe’ C# code](https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/keywords/unsafe) in a pre-defined assembly (for example, `Assembly-CSharp.dll`).  For Assembly Definition Files (`.asmdef`), click on one of your `.asmdef` files and activate the option in the Inspector window that appears. |
| **Use Deterministic Compilation** | Indicates whether to prevent compilation with the `-deterministic` C# flag. With this setting active, compiled assemblies are byte-for-byte the same each time they’re compiled.  For more information, refer to Microsoft’s [deterministic compiler option](https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/compiler-options/deterministic-compiler-option). |

### Optimization

| **Property** | **Description** |
| --- | --- |
| **Enable Dedicated Server optimizations** | Enable this option to perform additional optimizations on the Dedicated Server build. For more information on these optimizations, refer to Dedicated Server optimizations documentation. |
| **Prebake Collision Meshes** | Adds collision data to Meshes at build time. |
| **Preloaded Assets** | Sets an array of Assets for the player to load on startup.  To add new Assets, increase the value of the **Size** property and then set a reference to the Asset to load in the new **Element** box that appears. |
| **Managed Stripping Level** | Choose how aggressively Unity strips unused managed (C#) code. When Unity builds your app, the Unity Linker process can strip unused code from the managed DLLs your Project uses. Stripping code can make the resulting executable smaller, but can sometimes remove code that’s in use.   For more information about these options and bytecode stripping with IL2CPP, refer to ManagedStrippingLevel.     **Minimal**: Use this to strip class libraries, UnityEngine, Windows Runtime assemblies, and copy all other assemblies.  **Low**: Remove unreachable managed code to reduce build size and Mono/IL2CPP build times.  **Medium**: Run UnityLinker to reduce code size beyond what **Low** can achieve. You might need to support a custom link.xml file, and some reflection code paths might not behave the same.   **High**: UnityLinker will strip as much code as possible. This will further reduce code size beyond what Medium can achieve but managed code debugging of some methods might no longer work. You might need to support a custom link.xml file, and some reflection code paths might not behave the same. |
| **Vertex Compression** | Sets vertex compression per channel. This affects all the meshes in your project.  Typically, Vertex Compression is used to reduce the size of mesh data in memory, reduce file size, and improve GPU performance.   For more information on how to configure vertex compression and limitations of this setting, refer to Compressing mesh data. |
| **Optimize Mesh Data** | Enable this option to strip unused vertex attributes from the mesh used in a build. This option reduces the amount of data in the mesh, which can help reduce build size, loading times, and runtime memory usage.    **Warning:** If you have this setting enabled, don’t change material or shader settings at runtime.    For more information, refer to PlayerSettings.stripUnusedMeshComponents. |
| **Texture Mipmap Stripping** | Enables mipmap stripping for all platforms. It strips unused mipmap levels from Textures at build time.  Unity determines unused mipmap levels by comparing the mipmap level against the quality settings for the current platform. If a mipmap level is excluded from every quality setting for the current platform, then Unity strips those mipmap levels from the build at build time. If `QualitySettings.globalTextureMipmapLimit` is set to a mipmap level that has been stripped, Unity will set the value to the closest mipmap level that hasn’t been stripped. |

### Stack Trace

Select your preferred logging type by enabling the option that corresponds to each Log Type.

| **Property** | **Description** |
| --- | --- |
| **None** | No logs are ever recorded. |
| **ScriptOnly** | Logs only when running **scripts**. |
| **Full** | Logs all the time. |

Refer to stack trace logging for more information.

### Legacy

Activate the **Clamp BlendShapes (Deprecated)** option to clamp the range of blend shape weights in SkinnedMeshRenderers.

### Capture Logs

Activate the **Capture Startup Logs** option to capture the startup logs for later processing (for example by a third-party logging library).

## Additional resources

- Build your application for Dedicated Server
- Dedicated Server AssetBundles
