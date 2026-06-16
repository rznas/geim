<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Access system and hardware information.

Use this class to figure out capabilities of the underlying platform and hardware. For example, you can check which RenderTexture formats are supported (SupportsRenderTextureFormat), how many CPU threads are available (processorCount), and so on.

### Static Properties

| Property | Description |
| --- | --- |
| batteryLevel | The current battery level (Read Only). |
| batteryStatus | Returns the current status of the device's battery (Read Only). |
| computeSubGroupSize | Size of the compute thread group that supports efficient memory sharing on the GPU (Read Only). |
| constantBufferOffsetAlignment | Minimum buffer offset (in bytes) when binding a constant buffer using Shader.SetConstantBuffer or Material.SetConstantBuffer. |
| copyTextureSupport | Support for various Graphics.CopyTexture cases (Read Only). |
| deviceModel | The model of the device (Read Only). |
| deviceName | The user defined name of the device (Read Only). |
| deviceType | Returns the kind of device the application is running on (Read Only). |
| deviceUniqueIdentifier | A unique device identifier. It's guaranteed to be unique for every device (Read Only). |
| foveatedRenderingCaps | The foveated rendering technique supported on this platform. |
| graphicsDeviceID | The identifier code of the graphics device (Read Only). |
| graphicsDeviceName | The name of the graphics device (Read Only). |
| graphicsDeviceType | The graphics API type used by the graphics device (Read Only). |
| graphicsDeviceVendor | The vendor of the graphics device (Read Only). |
| graphicsDeviceVendorID | The identifier code of the graphics device vendor (Read Only). |
| graphicsDeviceVersion | The graphics API type and driver version used by the graphics device (Read Only). |
| graphicsMemorySize | Amount of video memory present (Read Only). |
| graphicsMultiThreaded | Is graphics device using multi-threaded rendering (Read Only)? |
| graphicsShaderLevel | Graphics device shader capability level (Read Only). |
| graphicsUVStartsAtTop | Returns true if the texture UV coordinate convention for this platform has Y starting at the top of the image. |
| hasDynamicUniformArrayIndexingInFragmentShaders | Returns true when the GPU has native support for indexing uniform arrays in fragment shaders without restrictions. |
| hasHiddenSurfaceRemovalOnGPU | True if the GPU supports hidden surface removal. |
| hasMipMaxLevel | Returns true if the GPU supports partial mipmap chains (Read Only). |
| hasTiledGPU | Returns true when the GPU uses tiled rendering. |
| hdrDisplaySupportFlags | Returns a bitwise combination of HDRDisplaySupportFlags describing the support for HDR displays on the system. |
| maxAnisotropyLevel | Returns the maximum anisotropic level for anisotropic filtering that is supported on the device. |
| maxComputeBufferInputsCompute | Determines how many compute buffers Unity supports simultaneously in a compute shader for reading. (Read Only) |
| maxComputeBufferInputsDomain | Determines how many compute buffers Unity supports simultaneously in a domain shader for reading. (Read Only) |
| maxComputeBufferInputsFragment | Determines how many compute buffers Unity supports simultaneously in a fragment shader for reading. (Read Only) |
| maxComputeBufferInputsGeometry | Determines how many compute buffers Unity supports simultaneously in a geometry shader for reading. (Read Only) |
| maxComputeBufferInputsHull | Determines how many compute buffers Unity supports simultaneously in a hull shader for reading. (Read Only) |
| maxComputeBufferInputsVertex | Determines how many compute buffers Unity supports simultaneously in a vertex shader for reading. (Read Only) |
| maxComputeWorkGroupSize | The largest total number of invocations in a single local work group that can be dispatched to a compute shader (Read Only). |
| maxComputeWorkGroupSizeX | The maximum number of work groups that a compute shader can use in X dimension (Read Only). |
| maxComputeWorkGroupSizeY | The maximum number of work groups that a compute shader can use in Y dimension (Read Only). |
| maxComputeWorkGroupSizeZ | The maximum number of work groups that a compute shader can use in Z dimension (Read Only). |
| maxConstantBufferSize | The maximum size of a constant buffer binding (Read Only). |
| maxCubemapSize | Maximum cubemap texture size in pixels (Read Only). |
| maxGraphicsBufferSize | The maximum size of a graphics buffer (GraphicsBuffer, ComputeBuffer, vertex/index buffer, etc.) in bytes (Read Only). |
| maxTexture3DSize | Maximum 3D texture size in pixels (Read Only). |
| maxTextureArraySlices | Maximum number of slices in a Texture array (Read Only). |
| maxTextureSize | Maximum texture size in pixels (Read Only). |
| maxTiledPixelStorageSize | Returns the maximum per-pixel storage size in bytes for Multiple Render Targets (MRT) in tile or render target memory on the current platform. |
| npotSupport | What NPOT (non-power of two size) texture support does the GPU provide? (Read Only) |
| operatingSystem | Operating system name with version (Read Only). |
| operatingSystemFamily | Returns the operating system family the game is running on (Read Only). |
| processorCount | Number of processors present (Read Only). |
| processorFrequency | The processor frequency of the device in MHz (Read Only). |
| processorManufacturer | Specifies the manufacturer name of the processor in the user's device (Read Only). |
| processorModel | Specifies the model name of the processor in the user's device (Read Only). |
| processorType | Processor name (Read Only). |
| renderingThreadingMode | Application's actual rendering threading mode (Read Only). |
| supportedRandomWriteTargetCount | The maximum number of random write targets (UAV) that Unity supports simultaneously. (Read Only) |
| supportedRenderTargetCount | How many simultaneous render targets (MRTs) are supported? (Read Only) |
| supports2DArrayTextures | Are 2D Array textures supported? (Read Only) |
| supports32bitsIndexBuffer | Are 32-bit index buffers supported? (Read Only) |
| supports3DRenderTextures | Are 3D (volume) RenderTextures supported? (Read Only) |
| supports3DTextures | Are 3D (volume) textures supported? (Read Only) |
| supportsAccelerometer | Is an accelerometer available on the device? |
| supportsAnisotropicFilter | Returns true when anisotropic filtering is supported on the device. |
| supportsAsyncCompute | Returns true when the platform supports asynchronous compute queues and false if otherwise. |
| supportsAsyncGPUReadback | Returns true if asynchronous readback of GPU data is available for this device and false otherwise. |
| supportsAudio | Is there an Audio device available for playback? (Read Only) |
| supportsCompressed3DTextures | Are compressed formats for 3D (volume) textures supported? (Read Only). |
| supportsComputeShaders | Are compute shaders supported? (Read Only) |
| supportsConservativeRaster | Is conservative rasterization supported? (Read Only) |
| supportsCubemapArrayTextures | Are Cubemap Array textures supported? (Read Only) |
| supportsDepthFetchInRenderPass | Indicates whether RenderPass can use its depth attachment as input. (Read Only) |
| supportsDynamicResolution | Indicates whether the platform supports dynamic resolution scaling. (Read Only) |
| supportsGeometryShaders | Are geometry shaders supported? (Read Only) |
| supportsGpuRecorder | Specifies whether the current platform supports the GPU Recorder or not. (Read Only). |
| supportsGraphicsFence | true if the platform supports GraphicsFences, otherwise false. |
| supportsGyroscope | Is a gyroscope available on the device? |
| supportsHardwareQuadTopology | Does the hardware support quad topology? (Read Only) |
| supportsIndirectArgumentsBuffer | Returns true if the graphics system supports GPU draw calls with indirect argument buffers. (Read Only) |
| supportsIndirectDispatchRays | Returns true if the graphics system supports indirect ray tracing dispatch. (Read Only) |
| supportsInlineRayTracing | Is inline ray tracing (ray query) supported? (Read Only) |
| supportsInstancing | Is GPU draw call instancing supported? (Read Only) |
| supportsLocationService | Is the device capable of reporting its location? |
| supportsMachineLearning | Checks if hardware acceleration of machine learning workloads is supported by the current system configuration. |
| supportsMemorylessTextures | A boolean property that indicates whether memoryless textures are supported (true if supported, false if not supported). |
| supportsMipStreaming | Is streaming of texture mip maps supported? (Read Only) |
| supportsMotionVectors | Whether motion vectors are supported on this platform. |
| supportsMultisampleAutoResolve | Returns true if multisampled textures are resolved automatically |
| supportsMultisampled2DArrayTextures | Boolean that indicates whether multisampled texture arrays are supported (true if supported, false if not supported). |
| supportsMultisampledBackBuffer | A boolean property that indicates whether multi-sampled back buffer is supported (true if supported, false if not supported). |
| supportsMultisampledShaderResolve | A Boolean that indicates whether the final sub pass of a multi-sampled native render pass can write to a single-sampled output attachment. |
| supportsMultisampledTextures | Returns a value of 1 or higher if multisampled textures are supported. (Read Only) |
| supportsMultisampleResolveDepth | Returns true if the platform supports multisample resolve of depth textures. |
| supportsMultisampleResolveStencil | Returns true if the platform supports multisample resolve of stencil textures. Otherwise, returns false. |
| supportsMultiview | Boolean that indicates whether Multiview is supported (true if supported, false if not supported). (Read Only) |
| supportsParallelPSOCreation | Returns true if parallel PSO creation is available for this device and false otherwise. |
| supportsRawShadowDepthSampling | Is sampling raw depth from shadowmaps supported? (Read Only) |
| supportsRayTracing | Checks if any ray tracing features are supported by the current system configuration. (Read Only) |
| supportsRayTracingShaders | Checks if ray tracing shaders are supported by the current system configuration. (Read Only) |
| supportsRendering | Returns true when the platform supports rendering and there is a graphics device available. |
| supportsRenderTargetArrayIndexFromVertexShader | Boolean that indicates if SV_RenderTargetArrayIndex can be used in a vertex shader (true if it can be used, false if not). |
| supportsSeparatedRenderTargetsBlend | Returns true when the platform supports different blend modes when rendering to multiple render targets, or false otherwise. |
| supportsSetConstantBuffer | Does the current renderer support binding constant buffers directly? (Read Only) |
| supportsShadows | Are built-in shadows supported? (Read Only) |
| supportsSparseTextures | Are sparse textures supported? (Read Only) |
| supportsStoreAndResolveAction | This property is true if the graphics API of the target build platform takes RenderBufferStoreAction.StoreAndResolve into account, false if otherwise. |
| supportsTessellationShaders | Are tessellation shaders supported? (Read Only) |
| supportsTextureWrapMirrorOnce | Returns a value of 1 or higher if the 'Mirror Once' texture wrap mode is supported. (Read Only) |
| supportsVariableRateShading | Does the device supports variable rate shading? (Read Only) |
| supportsVibration | Is the device capable of providing the user haptic feedback by vibration? |
| systemMemorySize | Amount of system memory present (Read Only). |
| unsupportedIdentifier | Value returned by SystemInfo string properties which are not supported on the current platform. |
| usesLoadStoreActions | True if the Graphics API takes RenderBufferLoadAction and RenderBufferStoreAction into account, false if otherwise. |
| usesReversedZBuffer | This property is true if the current platform uses a reversed depth buffer (where values range from 1 at the near plane and 0 at far plane), and false if the depth buffer is normal (0 is near, 1 is far). (Read Only) |

### Static Methods

| Method | Description |
| --- | --- |
| GetCompatibleFormat | Returns a format supported by the platform for the specified usage. |
| GetGraphicsFormat | Returns the platform-specific GraphicsFormat that is associated with the DefaultFormat. |
| GetRenderTextureSupportedMSAASampleCount | Checks if the target platform supports the MSAA samples count in the RenderTextureDescriptor argument. |
| GetTiledRenderTargetStorageSize | Returns the per-pixel storage size in bytes for a render target of the given GraphicsFormat on the current platform. |
| IsFormatSupported | Verifies that the specified graphics format is supported for the specified usage. |
| SupportsBlendingOnRenderTextureFormat | Is blending supported on render texture format? |
| SupportsRandomWriteOnRenderTextureFormat | Tests if a RenderTextureFormat can be used with RenderTexture.enableRandomWrite. |
| SupportsRenderTextureFormat | Is render texture format supported? |
| SupportsTextureFormat | Is texture format supported on this device? |
| SupportsVertexAttributeFormat | Indicates whether the given combination of a vertex attribute format and dimension is supported on this device. |
