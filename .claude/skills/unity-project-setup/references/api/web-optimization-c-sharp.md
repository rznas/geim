<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/web-optimization-c-sharp.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Use C# code to enable optimization settings

You can use code to enable some optimizations recommended in Optimize your Web build. If you use code to configure these settings it can save you time having to manually set each of them individually.

**Note**: This script only works in the Unity Editor, not in builds.

## Create a C# script to optimize your Web build

To use code to enable most of these optimizations at once in your Unity **project settings**:

1. Create an `Assets/Editor` folder if you don’t already have one.
2. Create an empty C# script in the `Editor` folder.
3. Paste the following code into the script: `using UnityEditor; using UnityEditor.Build; using UnityEngine; public class WebOptimizer { [MenuItem("Example/Optimize")] public static void Optimize() { var namedBuildTarget = NamedBuildTarget.WebGL; // Set IL2CPP code generation to Optimize Size PlayerSettings.SetIl2CppCodeGeneration(namedBuildTarget, Il2CppCodeGeneration.OptimizeSize); // Set the Managed Stripping Level to High PlayerSettings.SetManagedStrippingLevel(namedBuildTarget, ManagedStrippingLevel.High); // Strip unused mesh components PlayerSettings.stripUnusedMeshComponents = true; // Enable data caching PlayerSettings.WebGL.dataCaching = true; // Set the compression format to Brotli PlayerSettings.WebGL.compressionFormat = WebGLCompressionFormat.Brotli; // Deactivate exceptions PlayerSettings.WebGL.exceptionSupport = WebGLExceptionSupport.None; // Deactivate debug symbols PlayerSettings.WebGL.debugSymbolMode = WebGLDebugSymbolMode.Off; //Enable WebAssembly 2023 features PlayerSettings.WebGL.wasm2023 = true; // Set Platform Settings to optimize for disk size (LTO) UnityEditor.WebGL.UserBuildSettings.codeOptimization = UnityEditor.WebGL.WasmCodeOptimization.DiskSizeLTO; } }`
4. Change the script to suit your project.
5. From the toolbar, select **Example** > **Optimize** to run the script. Your settings update.

To change the settings for Asset Import Overrides, refer to Build profile reference.

## Additional resources

- Optimize your Web build
- Recommended Graphics settings to optimize your Web build
- Recommended Player settings to optimize your Web build
- Recommended Quality settings to optimize your Web build
- Remove unused resources from your Web build
- Optimize Web platform for mobile
