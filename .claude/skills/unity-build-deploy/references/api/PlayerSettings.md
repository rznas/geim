<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use Player settings to define how Unity builds and displays your final application.

### Static Properties

| Property | Description |
| --- | --- |
| accelerometerFrequency | Accelerometer update frequency. |
| advancedLicense | Is the advanced version being used? |
| allowedAutorotateToLandscapeLeft | Is auto-rotation to landscape left supported? |
| allowedAutorotateToLandscapeRight | Is auto-rotation to landscape right supported? |
| allowedAutorotateToPortrait | Is auto-rotation to portrait supported? |
| allowedAutorotateToPortraitUpsideDown | Is auto-rotation to portrait upside-down supported? |
| allowFullscreenSwitch | Enable to allow users to switch between full-screen and windowed mode using OS-specific keyboard shortcuts. |
| allowHDRDisplaySupport | Prepare the application to encode images for an HDR display. |
| allowUnsafeCode | Allow unsafe C# code to be compiled for predefined assemblies. |
| applicationIdentifier | The application identifier for the currently selected build target. |
| audioSpatialExperience | Determines if the Unity app's final mixed audio stream is spatialized. |
| bakeCollisionMeshes | Pre bake collision meshes on player build. |
| bundleVersion | The application’s global version number string. |
| colorSpace | Set the rendering color space for the current project. |
| companyName | The name of your company. |
| cursorHotspot | Default cursor's click position in pixels from the top left corner of the cursor image. |
| d3D12DeviceFilterListAsset | Specifies an D3D12DeviceFilterLists asset which provides filtering criteria for allowing or denying Windows devices from using D3D12 API and selecting Graphics Jobs mode when running Unity applications. |
| dedicatedServerOptimizations | Performs additional optimizations on Dedicated Server builds. |
| defaultCursor | The default cursor for your application. |
| defaultInterfaceOrientation | Default screen orientation for mobiles. |
| defaultScreenHeight | Default vertical dimension of stand-alone player window. |
| defaultScreenWidth | Default horizontal dimension of stand-alone player window. |
| defaultWebScreenHeight | Default vertical dimension of web player window. |
| defaultWebScreenWidth | Default horizontal dimension of web player window. |
| enable360StereoCapture | Enable 360 Stereo Capture support on the current build target. |
| enableCrashReportAPI | Enables CrashReport API. |
| enableDirectStorage | Enables DirectStorage for supported platforms. |
| enableFrameTimingStats | Enable frame timing statistics. |
| enableInternalProfiler | Enables internal profiler. |
| enableMetalAPIValidation | Enables Metal API validation in the Editor. |
| enableOpenGLProfilerGPURecorders | Enable ProfilerRecorder usage to record GPU timings when rendering with OpenGL. |
| forceSingleInstance | Restrict standalone players to a single concurrent running instance. |
| fullScreenMode | Platform agnostic setting to define fullscreen behavior. Not all platforms support all modes. |
| gcIncremental | Allows you to enable or disable incremental mode for garbage collection. |
| gpuSkinning | Marked for deprecation in the future. Use PlayerSettings.meshDeformation instead. |
| graphicsJobMode | Selects the graphics job mode to use on platforms that support Native, Legacy and Split graphics jobs. |
| graphicsJobs | Enable graphics jobs (multi threaded rendering). |
| hdrBitDepth | The number of bits in each color channel for swap chain buffers. |
| insecureHttpOption | Determines if plain text HTTP connections are allowed. |
| legacyClampBlendShapeWeights | Defines whether the BlendShape weight range in SkinnedMeshRenderers is clamped. |
| logObjCUncaughtExceptions | Are ObjC uncaught exceptions logged? |
| macRetinaSupport | Enable Retina support for macOS. |
| meshDeformation | Specifies which method Unity uses to process mesh deformations for skinning. |
| mipStripping | Enable mip stripping for all platforms. |
| MTRendering | Is multi-threaded rendering enabled? |
| muteOtherAudioSources | Stops or allows audio from other applications to play in the background while your Unity application is running. |
| openGLRequireES31 | Specifies whether the application requires OpenGL ES 3.1 support. |
| openGLRequireES31AEP | Specifies whether the application requires OpenGL ES 3.1 AEP support. |
| openGLRequireES32 | Specifies whether the application requires OpenGL ES 3.2 support. |
| preserveFramebufferAlpha | When enabled, preserves the alpha value in the framebuffer to support rendering over native UI. |
| productGUID | Returns a unique project ID. |
| productName | The name of your product. |
| resetResolutionOnWindowResize | Indicates whether to reset the application's screen resolution when the native window size changes. |
| resizableWindow | Use resizable window in standalone player builds. |
| runInBackground | If enabled, your game will continue to run after lost focus. |
| spriteBatchVertexThreshold | Specifies the max vertex limit for Sprite batching. |
| statusBarHidden | Returns if status bar should be hidden. Supported on iOS only; on Android, the status bar is always hidden. |
| stereoRenderingPath | Active stereo rendering path |
| strictShaderVariantMatching | Enable strict shader variant matching in the player. |
| stripEngineCode | Remove unused Engine code from your build (IL2CPP-only). |
| stripUnusedMeshComponents | Should unused Mesh components be excluded from game build? |
| suppressCommonWarnings | Suppresses common C# warnings. |
| tvOSBundleVersion | Application bundle version for the TVOS platform. |
| use32BitDisplayBuffer | 32-bit Display Buffer is used. |
| useAnimatedAutorotation | Let the OS autorotate the screen as the device orientation changes. |
| useFlipModelSwapchain | Use DXGI flip model swap chain for D3D11. |
| useHDRDisplay | Switch the main display to HDR mode (if available). |
| useMacAppStoreValidation | Enable receipt validation for the Mac App Store. |
| usePlayerLog | Write a log file with debugging information. |
| virtualRealitySplashScreen | Virtual Reality specific splash screen. |
| visibleInBackground | On Windows, shows the application in the background if the Fullscreen Windowed mode is used. |
| visionOSBundleVersion | Application bundle version for the VisionOS platform. |
| vulkanEnableLateAcquireNextImage | Delays acquiring the swapchain image until after the frame is rendered. |
| vulkanEnablePreTransform | Applies the display rotation during rendering. |
| vulkanEnableSetSRGBWrite | Enables the ability to toggle sRGB write mode on Vulkan framebuffers. |
| vulkanNumSwapchainBuffers | Set the number of swapchain buffers used when rendering with Vulkan. |
| windowsGamepadBackendHint | Specifies the desired Windows API to be used for input. |

### Static Methods

| Method | Description |
| --- | --- |
| GetAdditionalCompilerArguments | Gets an array of additional compiler arguments set for a specific NamedBuildTarget. |
| GetAdditionalIl2CppArgs | Obtain the additional arguments passed to the IL2CPP compiler during the player build process. |
| GetApiCompatibilityLevel | Gets .NET API compatibility level for specified build target. |
| GetApplicationIdentifier | Get the application identifier for the specified platform. |
| GetArchitecture | Gets the architecture for the given build target. |
| GetCaptureStartupLogs | Returns whether a given build target is configured to capture startuplogs |
| GetDefaultScriptingBackend | Returns the default ScriptingImplementation for the build target you select. |
| GetDefaultShaderChunkCount | Gets the default limit on the number of shader variant chunks Unity loads and keeps in memory. |
| GetDefaultShaderChunkSizeInMB | Gets the default size for compressed shader variant chunks. |
| GetDynamicBatchingForPlatform | Returns true if dynamic batching is enabled for the given BuildTarget. |
| GetEditorAssembliesCompatibilityLevel | Gets .NET API compatibility level for the editor assemblies. |
| GetGraphicsAPIs | Get graphics APIs to be used on a build platform. |
| GetIcons | Returns the list of assigned icons for the specified build target. |
| GetIconSizes | Returns a list of icon sizes for the specified platform. |
| GetIl2CppCodeGeneration | Gets the value of code generation option for IL2CPP. |
| GetIl2CppCompilerConfiguration | Gets compiler configuration used when compiling generated C++ code for the build target you specify. |
| GetIl2CppStacktraceInformation | Gets stack trace information option for il2cpp builds for the build target you specify. |
| GetManagedStrippingLevel | Gets the managed code stripping level set for the build target you select |
| GetMobileMTRendering | Check if multithreaded rendering option for mobile platform is enabled. |
| GetNormalMapEncoding | Gets the NormalMapEncoding for the build target you select. |
| GetOverrideShaderChunkSettingsForPlatform | If the value is true, settings for the buildTarget override the default settings. |
| GetPlatformIcons | Gets the list of available icon slots for the specified build target and kind. The BuildTargetGroup overload is marked for deprecation in the future; use the NamedBuildTarget overload. |
| GetPreloadedAssets | Returns the assets that will be loaded at start up in the player and be kept alive until the player terminates. |
| GetScriptingBackend | Gets the scripting framework for the build target you select. |
| GetScriptingDefineSymbols | Gets the array of symbols for script compilation for the build target you select. Symbols are semicolon-separated. For example, "SYMBOL1;SYMBOL2". |
| GetShaderChunkCountForPlatform | Gets the default limit on the number of shader variant chunks Unity loads and keeps in memory for the build target. |
| GetShaderChunkSizeInMBForPlatform | Gets the default size for compressed shader variant chunks for the build target. |
| GetShaderPrecisionModel | Gets the active shader precision model. |
| GetStackTraceLogType | Gets stack trace logging options. |
| GetStaticBatchingForPlatform | Returns true if static batching is enabled for the given BuildTarget. |
| GetSupportedIconKinds | Retrieves all PlatformIconKind values supported by the specified build target. |
| GetTemplateCustomValue | Returns a value of a custom template variable. |
| GetUseDefaultGraphicsAPIs | Is a build platform using automatic graphics API choice? |
| GetVirtualTexturingSupportEnabled | Is virtual texturing enabled. |
| SetAdditionalCompilerArguments | Sets additional compiler arguments for a build target. |
| SetAdditionalIl2CppArgs | Set additional arguments passed to the IL2CPP compiler during the build process. |
| SetApiCompatibilityLevel | Sets .NET API compatibility level for specified build target. |
| SetApplicationIdentifier | Sets the application identifier for a platform. |
| SetArchitecture | Sets the target CPU architecture for the build target. |
| SetCaptureStartupLogs | Set whether a given build target is configured to capture startuplogs |
| SetDefaultShaderChunkCount | Sets the default limit on the number of shader variant chunks Unity loads and keeps in memory. |
| SetDefaultShaderChunkSizeInMB | Sets the default size for compressed shader variant chunks. |
| SetDynamicBatchingForPlatform | Sets dynamic batching for the given BuildTarget. |
| SetEditorAssembliesCompatibilityLevel | Sets .NET API compatibility level for Editor Assemblies. |
| SetGraphicsAPIs | Sets the graphics APIs used on a build platform. |
| SetIcons | Assigns a list of icons for the specified platform. |
| SetIl2CppCodeGeneration | Sets the code generation option for IL2CPP for the specified build target. |
| SetIl2CppCompilerConfiguration | Sets compiler configuration used when compiling generated C++ code for a particular build target. |
| SetIl2CppStacktraceInformation | Sets stack trace information option for il2cpp builds for the build target you specify. |
| SetManagedStrippingLevel | Sets the managed code stripping level for specified build target. |
| SetMobileMTRendering | Enable or disable multithreaded rendering option for mobile platform. |
| SetNormalMapEncoding | Sets the normal map encoding for the given build target. |
| SetOverrideShaderChunkSettingsForPlatform | Enable this to override the default shader variant chunk settings. |
| SetPlatformIcons | Assign a list of icons for the specified build target and platform icon kind. |
| SetPreloadedAssets | Assigns the assets that will be loaded at start up in the player and be kept alive until the player terminates. |
| SetScriptingBackend | Sets the scripting framework for a given build target. |
| SetScriptingDefineSymbols | Set user-specified symbols for script compilation for the given build target. |
| SetShaderChunkCountForPlatform | Sets the default limit on the number of shader variant chunks Unity loads and keeps in memory on the build target. |
| SetShaderChunkSizeInMBForPlatform | Sets the default size for compressed shader variant chunks on the build target. |
| SetShaderPrecisionModel | Sets the shader precision model. |
| SetStackTraceLogType | Set stack trace logging options. Note: calling this function will implicitly call Application.SetStackTraceLogType. |
| SetStaticBatchingForPlatform | Sets static batching for the given BuildTarget. |
| SetTemplateCustomValue | Sets a value of a custom template variable. |
| SetUseDefaultGraphicsAPIs | Should a build platform use automatic graphics API choice. |
| SetVirtualTexturingSupportEnabled | Enable virtual texturing. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
| GetEntityId | Gets the EntityId of the object. |
| ToString | Returns the name of the object. |

### Static Methods

| Method | Description |
| --- | --- |
| Destroy | Removes a GameObject, component, or asset. |
| DestroyImmediate | Destroys the specified object immediately. Use with caution and in Edit mode only. |
| DontDestroyOnLoad | Do not destroy the target Object when loading a new Scene. |
| FindAnyObjectByType | Retrieves any active loaded object of Type type. |
| FindObjectsByType | Retrieves a list of all loaded objects of Type type. |
| Instantiate | Clones the object original and returns the clone. |
| InstantiateAsync | Captures a snapshot of the original object (that must be related to some GameObject) and returns the AsyncInstantiateOperation. |

### Operators

| Operator | Description |
| --- | --- |
| bool | Does the object exist? |
| operator != | Compares if two objects refer to a different object. |
| operator == | Compares two object references to see if they refer to the same object. |
