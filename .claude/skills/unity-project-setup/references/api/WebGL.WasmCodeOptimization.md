<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WebGL.WasmCodeOptimization.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options for the optimization mode to use for compiling Web code.

This enum provides optimization settings for WebAssembly (Wasm) code in Unity Web builds, enabling developers to balance file size, runtime performance, and build speed depending on their needs.

```csharp
using UnityEditor;class WebOptimizer
{
    [MenuItem("Example/Optimize For Disk Size")]
    static void OptimizeForDiskSize()
    {
#if UNITY_WEBGL
    // Set code optimization setting to optimize for disk size
    UnityEditor.WebGL.UserBuildSettings.codeOptimization = UnityEditor.WebGL.WasmCodeOptimization.DiskSize;
    // You will find the setting applied now in File > Build Settings > Web > Web Settings
#endif
}
}
```

### Properties

| Property | Description |
| --- | --- |
| RuntimeSpeed | Generate Web code that’s optimized for runtime performance, at the expense of taking a longer time to build compared to WasmCodeOptimization.BuildTimes. |
| RuntimeSpeedLTO | Generate Web code that’s optimized for runtime performance, at the expense of taking a longer time to build compared to WasmCodeOptimization.BuildTimes. Also enable an additional Link Time Optimizations (LTO) stage. |
| DiskSize | Favor optimizations that minimize build size, at the expense of taking a longer time to build compared to WasmCodeOptimization.BuildTimes. |
| DiskSizeLTO | Favor optimizations that minimize build size, at the expense of taking a longer time to build compared to WasmCodeOptimization.BuildTimes. Also enable an additional Link Time Optimizations (LTO) stage. |
| BuildTimes | Generate Web code that takes the least amount of time to build. |
