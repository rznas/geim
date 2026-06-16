<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/performance-profiling-tools.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Profiling tools reference

Profiling your application is the best way to measure its performance. You can use different profiling tools to understand where there might be any issues with elements of your application including memory usage, CPU performance, GPU performance, and your custom **scripts**.

## Unity’s analysis tools

Unity has several profiling and analysis tools to measure the performance of your application:

| **Tool** | **Description** |
| --- | --- |
| **Profiler** | Measures the performance of the Unity Editor, your application in Play mode, or connects to a device running your application in development mode. |
| **[Memory Profiler](https://docs.unity3d.com/Packages/com.unity.memoryprofiler@latest)** | Provides in-depth memory performance analysis. |
| **[Profiling Core package](https://docs.unity3d.com/Packages/com.unity.profiling.core@latest)** | Provides APIs you can use to add contextual information to Unity Profiler captures. For more information, refer to Adding profiling information to your code. |
| **[Profile Analyzer](https://docs.unity3d.com/Packages/com.unity.performance.profile-analyzer@latest)** | Compares two profiling datasets together to analyze how your changes affect your application’s performance. |
| **Frame Debugger** | Provides a way to measure the graphical performance of your application. |
| **Project Auditor** | Creates a report that describes issues about the scripts, assets, and code in your project. |

## Third party profiling tools

Alongside the Unity Profiler, use platform-specific profiling tools to ensure your application runs as expected. These tools have the most utility on platforms that can use IL2CPP to produce a C++ version of the project. These native code versions provide transparent call stacks and high-resolution method timings that are unavailable when running under Mono.

The following list provides some examples of available profiling tools. You can also use Unity’s low level native plug-in Profiler API to export profiling data to third-party profiling tools.

### Android

| **Tool** | **Description** |
| --- | --- |
| **[Android GPU Inspector](https://developer.android.com/agi)** | A tool by Google for general Android GPU profiling. |
| **[Streamline Performance Analyzer](https://developer.arm.com/tools-and-software/embedded/arm-development-studio/components/streamline-performance-analyzer)** | A tool by ARM to analyze devices with ARM CPUs. |
| **[Arm Performance Studio](https://developer.arm.com/Tools%20and%20Software/Arm%20Performance%20Studio)** | A selection of tools by ARM to analyze Mali GPU devices. |
| **[PVRTune](https://developer.imaginationtech.com/pvrtune/)** | A tool by Imagination Technologies for Imagination PowerVR GPU devices. |
| **[Snapdragon Profiler](https://developer.qualcomm.com/software/snapdragon-profiler)** | A tool by Qualcomm for GPU and system profiling of Qualcomm chip devices. |

### macOS and iOS

| **Tool** | **Description** |
| --- | --- |
| **[Profiling apps using Instruments](https://developer.apple.com/tutorials/instruments)** | Use [Xcode’s](https://developer.apple.com/xcode/) inbuilt profiling tool to analyze your application. |
| **[Metal Debugger](https://developer.apple.com/documentation/xcode/metal-debugger)** | Analyzes projects that use the Metal API. |

### Windows

| **Tool** | **Description** |
| --- | --- |
| **[AMD uProf](https://developer.amd.com/amd-uprof/)** | A profiling tool by AMD for performance analysis. |
| **Intel Performance Analyzers** | Tools by Intel for graphics performance analysis. |
| **[NVIDIA Nsight Graphics](https://developer.nvidia.com/nsight-graphics)** | A tool by NVIDIA for graphics debugging and profiling. |
| **[PIX on Windows](https://devblogs.microsoft.com/pix/)** | A tool by Microsoft for GPU performance tuning and debugging. |
| **[Superluminal](https://superluminal.eu/)** | A profiler by Superluminal for C++ applications. |
| **VTune** | A tool by Intel for CPU and GPU performance profiling. |
| **[Windows Performance Toolkit](https://docs.microsoft.com/en-us/windows-hardware/test/wpt/)** | Microsoft’s collection of performance monitoring tools. |
| **[Visual Studio Graphics Diagnostics](http://msdn.microsoft.com/en-us/library/hh315751.aspx)** | Graphics debugging and profiling tools in Visual Studio. |
| **RenderDoc** | A graphics debugging tool by RenderDoc for analyzing rendering. |
| **[Radeon Developer Tool Suite](https://gpuopen.com/introducing-radeon-developer-tool-suite/)** | Tools by AMD for GPU profiling and debugging. |

## Additional resources

- Graphics performance and profiling
- Optimization for Android
- Optimize performance for iOS
