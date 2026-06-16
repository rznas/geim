<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.WebGL.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

WebGL specific player settings.

### Static Properties

| Property | Description |
| --- | --- |
| closeOnQuit | If enabled, the Unity Player will close the browser running it when the application quits. |
| compressionFormat | CompressionFormat defines the compression type that the WebGL resources are encoded to. |
| dataCaching | Enables automatic caching of unityweb files. |
| debugSymbolMode | Enables generation of debug symbols file in the build output directory. Supported options: embedded debug symbols and debug symbols in external file. |
| decompressionFallback | Include decompression fallback code for build files in the loader. |
| enableSubmoduleStrippingCompatibility | If enabled, produces a build that can be used with the submodule stripping functionality of the Web Stripping Tool package. If disabled, produces a build that is not intended to be submodule stripped. It is best to leave this option disabled whenever not using the Web Stripping Tool package, or generated code size can be adversely affected. |
| exceptionSupport | Exception support for WebGL builds. |
| geometricMemoryGrowthStep | Heap memory growth factor. |
| initialMemorySize | Initial size of the WASM heap memory in MB. |
| linearMemoryGrowthStep | Heap memory growth step in MB. |
| linkerTarget | Allows you to specify the web build format that is used when you build your project. |
| maximumMemorySize | Maximum size of the WASM heap memory in MB. |
| memoryGeometricGrowthCap | Upper limit for heap growth step in MB. |
| memoryGrowthMode | The growth mode for WASM heap memory. |
| memorySize | Memory size for WebGL builds in Megabyte. |
| nameFilesAsHashes | Enables using MD5 hash of the uncompressed file contents as a filename for each file in the build. |
| powerPreference | The power preference hint to provide to the WebGL context to help decide which GPU to use in multi-gpu systems. Note that this is just a hint, and some WebGL implementations may choose to ignore it. |
| showDiagnostics | Displays a diagnostics overlay on the Unity application page. |
| template | Path to the WebGL template asset. |
| threadsSupport | Multithreading support in WebGL. |
| wasm2023 | If enabled, generated WebAssembly code will target "WebAssembly 2023", a Unity-coined name for a selection of newer WebAssembly language features. These features include: sign-extension opcodes, non-trapping fp-to-int instructions, bulk memory, JS BigInt integration, WebAssembly.Table, native WebAssembly exceptions and SIMD. Requires Chrome ≥ 91 (May 2021), Firefox ≥ 89 (June 2021) or Safari ≥ 16.4 (March 2023). If disabled, targets the original WebAssembly "MVP" feature set. |
| wasmArithmeticExceptions | The trapping mode for WebAssembly code. |
| webAssemblyBigInt | If enabled, generated WebAssembly code will rely on the BigInt ABI for function signatures containing 64-bit variables. Enable this to achieve faster build times and slightly smaller code size. The Wasm BigInt feature requires at least Chrome 85 (Aug 25, 2020), Firefox 78 (Jun 30, 2020), Safari 14.5 (Apr 26, 2021), or newer. Disable this option to target older browsers that do not support the Wasm BigInt feature. It is recommended to enable this option for new projects and if you prefer fast build iteration times, and to disable it if targeting backward compatibility with older browsers is important. |
| webAssemblyTable | If enabled, targets the WebAssembly.Table language feature, which results in faster JS-Wasm interop and faster build times. WebAssembly.Table is not backwards compatible with the older dynCalls interop model. If disabled, Unity targets the old deprecated Emscripten -sDYNCALLS flag for backwards compatibility with older Unity Web platform JS plugin code. It is recommended to enable this option for new projects that do not utilize any older incompatible JavaScript plugins, and when you prefer fast build iteration times, and to disable it if utilizing .jslib files that rely on the older dynCall() mechanism. |
