<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Device.SystemInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Access platform-specific system and hardware information.

This class has the same functionality as SystemInfo and also mimics platform-specific behavior in the Unity Editor. Use it together with the Device Simulator to test platform-specific behaviors inside the Editor. Outside of the Editor, this class behaves exactly like the SystemInfo class. Unity strips all simulation capabilities during the build process. Use the original SystemInfo class if you work directly with the Unity Editor (for example, to create a custom Editor tool) and you don't need to use any simulated values.

### Static Properties

| Property | Description |
| --- | --- |
| batteryLevel | This has the same functionality as SystemInfo.batteryLevel and also mimics platform-specific behavior in the Unity Editor. |
| batteryStatus | This has the same functionality as SystemInfo.batteryStatus and also mimics platform-specific behavior in the Unity Editor. |
| computeSubGroupSize | This has the same functionality as SystemInfo.computeSubGroupSize and also mimics platform-specific behavior in the Unity Editor. |
| constantBufferOffsetAlignment | This has the same functionality as SystemInfo.constantBufferOffsetAlignment and also mimics platform-specific behavior in the Unity Editor. |
| copyTextureSupport | This has the same functionality as SystemInfo.copyTextureSupport and also mimics platform-specific behavior in the Unity Editor. |
| deviceModel | This has the same functionality as SystemInfo.deviceModel and also mimics platform-specific behavior in the Unity Editor. |
| deviceName | This has the same functionality as SystemInfo.deviceName and also mimics platform-specific behavior in the Unity Editor. |
| deviceType | This has the same functionality as SystemInfo.deviceType and also mimics platform-specific behavior in the Unity Editor. |
| deviceUniqueIdentifier | This has the same functionality as SystemInfo.deviceUniqueIdentifier and also mimics platform-specific behavior in the Unity Editor. |
| foveatedRenderingCaps | This has the same functionality as SystemInfo.foveatedRenderingCaps and also mimics platform-specific behavior in the Unity Editor. |
| graphicsDeviceID | This has the same functionality as SystemInfo.graphicsDeviceID and also mimics platform-specific behavior in the Unity Editor. |
| graphicsDeviceName | This has the same functionality as SystemInfo.graphicsDeviceName and also mimics platform-specific behavior in the Unity Editor. |
| graphicsDeviceType | This has the same functionality as SystemInfo.graphicsDeviceType and also mimics platform-specific behavior in the Unity Editor. |
| graphicsDeviceVendor | This has the same functionality as SystemInfo.graphicsDeviceVendor and also mimics platform-specific behavior in the Unity Editor. |
| graphicsDeviceVendorID | This has the same functionality as SystemInfo.graphicsDeviceVendorID and also mimics platform-specific behavior in the Unity Editor. |
| graphicsDeviceVersion | This has the same functionality as SystemInfo.graphicsDeviceVersion and also mimics platform-specific behavior in the Unity Editor. |
| graphicsMemorySize | This has the same functionality as SystemInfo.graphicsMemorySize and also mimics platform-specific behavior in the Unity Editor. |
| graphicsMultiThreaded | This has the same functionality as SystemInfo.graphicsMultiThreaded and also mimics platform-specific behavior in the Unity Editor. |
| graphicsShaderLevel | This has the same functionality as SystemInfo.graphicsShaderLevel and also mimics platform-specific behavior in the Unity Editor. |
| graphicsUVStartsAtTop | This has the same functionality as SystemInfo.graphicsUVStartsAtTop and also mimics platform-specific behavior in the Unity Editor. |
| hasDynamicUniformArrayIndexingInFragmentShaders | This has the same functionality as SystemInfo.hasDynamicUniformArrayIndexingInFragmentShaders and also mimics platform-specific behavior in the Unity Editor. |
| hasHiddenSurfaceRemovalOnGPU | This has the same functionality as SystemInfo.hasHiddenSurfaceRemovalOnGPU and also mimics platform-specific behavior in the Unity Editor. |
| hasMipMaxLevel | This has the same functionality as SystemInfo.hasMipMaxLevel and also mimics platform-specific behavior in the Unity Editor. |
| hasTiledGPU | This has the same functionality as SystemInfo.hasTiledGPU and also mimics platform-specific behavior in the Unity Editor. |
| hdrDisplaySupportFlags | This has the same functionality as SystemInfo.hdrDisplaySupportFlags and also mimics platform-specific behavior in the Unity Editor. |
| maxAnisotropyLevel | This has the same functionality as SystemInfo.maxAnisotropyLevel and also mimics platform-specific behavior in the Unity Editor. |
| maxComputeBufferInputsCompute | This has the same functionality as SystemInfo.maxComputeBufferInputsCompute and also mimics platform-specific behavior in the Unity Editor. |
| maxComputeBufferInputsDomain | This has the same functionality as SystemInfo.maxComputeBufferInputsDomain and also mimics platform-specific behavior in the Unity Editor. |
| maxComputeBufferInputsFragment | This has the same functionality as SystemInfo.maxComputeBufferInputsFragment and also mimics platform-specific behavior in the Unity Editor. |
| maxComputeBufferInputsGeometry | This has the same functionality as SystemInfo.maxComputeBufferInputsGeometry and also mimics platform-specific behavior in the Unity Editor. |
| maxComputeBufferInputsHull | This has the same functionality as SystemInfo.maxComputeBufferInputsHull and also mimics platform-specific behavior in the Unity Editor. |
| maxComputeBufferInputsVertex | This has the same functionality as SystemInfo.maxComputeBufferInputsVertex and also mimics platform-specific behavior in the Unity Editor. |
| maxComputeWorkGroupSize | This has the same functionality as SystemInfo.maxComputeWorkGroupSize and also mimics platform-specific behavior in the Unity Editor. |
| maxComputeWorkGroupSizeX | This has the same functionality as SystemInfo.maxComputeWorkGroupSizeX and also mimics platform-specific behavior in the Unity Editor. |
| maxComputeWorkGroupSizeY | This has the same functionality as SystemInfo.maxComputeWorkGroupSizeY and also mimics platform-specific behavior in the Unity Editor. |
| maxComputeWorkGroupSizeZ | This has the same functionality as SystemInfo.maxComputeWorkGroupSizeZ and also mimics platform-specific behavior in the Unity Editor. |
| maxConstantBufferSize | This property mimics platform-specific behavior caused by SystemInfo.maxConstantBufferSize. Use this property for platform-specific testing in the Unity Editor. |
| maxCubemapSize | This has the same functionality as SystemInfo.maxCubemapSize and also mimics platform-specific behavior in the Unity Editor. |
| maxGraphicsBufferSize | The maximum size of a graphics buffer (GraphicsBuffer, ComputeBuffer, vertex/index buffer, etc.) in bytes (Read Only). |
| maxTexture3DSize | This has the same functionality as SystemInfo.maxTexture3DSize and also mimics platform-specific behavior in the Unity Editor. |
| maxTextureArraySlices | This has the same functionality as SystemInfo.maxTextureArraySlices and also mimics platform-specific behavior in the Unity Editor. |
| maxTextureSize | This has the same functionality as SystemInfo.maxTextureSize and also mimics platform-specific behavior in the Unity Editor. |
| maxTiledPixelStorageSize | This has the same functionality as SystemInfo.maxTiledPixelStorageSize and also mimics platform-specific behavior in the Unity Editor. |
| npotSupport | This has the same functionality as SystemInfo.npotSupport and also mimics platform-specific behavior in the Unity Editor. |
| operatingSystem | This has the same functionality as SystemInfo.operatingSystem and also mimics platform-specific behavior in the Unity Editor. |
| operatingSystemFamily | This has the same functionality as SystemInfo.operatingSystemFamily and also mimics platform-specific behavior in the Unity Editor. |
| processorCount | This has the same functionality as SystemInfo.processorCount and also mimics platform-specific behavior in the Unity Editor. |
| processorFrequency | This has the same functionality as SystemInfo.processorFrequency and also mimics platform-specific behavior in the Unity Editor. |
| processorManufacturer | This has the same functionality as SystemInfo.processorManufacturer and also mimics platform-specific behavior in the Unity Editor. |
| processorModel | This has the same functionality as SystemInfo.processorModel and also mimics platform-specific behavior in the Unity Editor. |
| processorType | This has the same functionality as SystemInfo.processorType and also mimics platform-specific behavior in the Unity Editor. |
| renderingThreadingMode | This has the same functionality as SystemInfo.renderingThreadingMode and also mimics platform-specific behavior in the Unity Editor. |
| supportedRandomWriteTargetCount | This has the same functionality as SystemInfo.supportedRandomWriteTargetCount and also mimics platform-specific behavior in the Unity Editor. |
| supportedRenderTargetCount | This has the same functionality as SystemInfo.supportedRenderTargetCount and also mimics platform-specific behavior in the Unity Editor. |
| supports2DArrayTextures | This has the same functionality as SystemInfo.supports2DArrayTextures and also mimics platform-specific behavior in the Unity Editor. |
| supports32bitsIndexBuffer | This has the same functionality as SystemInfo.supports32bitsIndexBuffer and also mimics platform-specific behavior in the Unity Editor. |
| supports3DRenderTextures | This has the same functionality as SystemInfo.supports3DRenderTextures and also mimics platform-specific behavior in the Unity Editor. |
| supports3DTextures | This has the same functionality as SystemInfo.supports3DTextures and also mimics platform-specific behavior in the Unity Editor. |
| supportsAccelerometer | This has the same functionality as SystemInfo.supportsAccelerometer and also mimics platform-specific behavior in the Unity Editor. |
| supportsAnisotropicFilter | This has the same functionality as SystemInfo.supportsAnisotropicFilter and also mimics platform-specific behavior in the Unity Editor. |
| supportsAsyncCompute | This has the same functionality as SystemInfo.supportsAsyncCompute and also mimics platform-specific behavior in the Unity Editor. |
| supportsAsyncGPUReadback | This has the same functionality as SystemInfo.supportsAsyncGPUReadback and also mimics platform-specific behavior in the Unity Editor. |
| supportsAudio | This has the same functionality as SystemInfo.supportsAudio and also mimics platform-specific behavior in the Unity Editor. |
| supportsCompressed3DTextures | This has the same functionality as SystemInfo.supportsCompressed3DTextures and also mimics platform-specific behavior in the Unity Editor. |
| supportsComputeShaders | This has the same functionality as SystemInfo.supportsComputeShaders and also mimics platform-specific behavior in the Unity Editor. |
| supportsConservativeRaster | This has the same functionality as SystemInfo.supportsConservativeRaster and also mimics platform-specific behavior in the Unity Editor. |
| supportsCubemapArrayTextures | This has the same functionality as SystemInfo.supportsCubemapArrayTextures and also mimics platform-specific behavior in the Unity Editor. |
| supportsDepthFetchInRenderPass | Indicates whether RenderPass can use its depth attachment as input. (Read Only) |
| supportsDynamicResolution | Indicates whether the platform supports dynamic resolution scaling. (Read Only) |
| supportsGeometryShaders | This has the same functionality as SystemInfo.supportsGeometryShaders and also mimics platform-specific behavior in the Unity Editor. |
| supportsGpuRecorder | This has the same functionality as SystemInfo.supportsGpuRecorder and also mimics platform-specific behavior in the Unity Editor. |
| supportsGraphicsFence | This has the same functionality as SystemInfo.supportsGraphicsFence and also mimics platform-specific behavior in the Unity Editor. |
| supportsGyroscope | This has the same functionality as SystemInfo.supportsGyroscope and also mimics platform-specific behavior in the Unity Editor. |
| supportsHardwareQuadTopology | This has the same functionality as SystemInfo.supportsHardwareQuadTopology and also mimics platform-specific behavior in the Unity Editor. |
| supportsIndirectArgumentsBuffer | This property has the same functionality as SystemInfo.supportsIndirectArgumentsBuffer and also mimics platform-specific behavior in the Unity Editor. |
| supportsIndirectDispatchRays | This property has the same functionality as SystemInfo.supportsIndirectDispatchRays and also mimics platform-specific behavior in the Unity Editor. |
| supportsInlineRayTracing | This property has the same functionality as SystemInfo.supportsInlineRayTracing and also mimics platform-specific behavior in the Unity Editor. |
| supportsInstancing | This has the same functionality as SystemInfo.supportsInstancing and also mimics platform-specific behavior in the Unity Editor. |
| supportsLocationService | This has the same functionality as SystemInfo.supportsLocationService and also mimics platform-specific behavior in the Unity Editor. |
| supportsMachineLearning | Checks if hardware acceleration of machine learning workloads is supported by the current system configuration. |
| supportsMemorylessTextures | This has the same functionality as SystemInfo.supportsMemorylessTextures and also mimics platform-specific behavior in the Unity Editor. |
| supportsMipStreaming | This has the same functionality as SystemInfo.supportsMipStreaming and also mimics platform-specific behavior in the Unity Editor. |
| supportsMotionVectors | This has the same functionality as SystemInfo.supportsMotionVectors and also mimics platform-specific behavior in the Unity Editor. |
| supportsMultisampleAutoResolve | This has the same functionality as SystemInfo.supportsMultisampleAutoResolve and also mimics platform-specific behavior in the Unity Editor. |
| supportsMultisampled2DArrayTextures | This has the same functionality as SystemInfo.supportsMultisampled2DArrayTextures and also mimics platform-specific behavior in the Unity Editor. |
| supportsMultisampledBackBuffer | This property has the same functionality as SystemInfo.supportsMultisampledBackBuffer and it also mimics platform-specific behavior in the Unity Editor. |
| supportsMultisampledShaderResolve | This has the same functionality as SystemInfo.supportsMultisampledShaderResolve and also mimics platform-specific behavior in the Unity Editor. |
| supportsMultisampledTextures | This has the same functionality as SystemInfo.supportsMultisampledTextures and also mimics platform-specific behavior in the Unity Editor. |
| supportsMultisampleResolveDepth | This property has the same functionality as SystemInfo.supportsMultisampleResolveDepth and also mimics platform-specific behavior in the Unity Editor. |
| supportsMultisampleResolveStencil | This property has the same functionality as SystemInfo.supportsMultisampleResolveStencil and also mimics platform-specific behavior in the Unity Editor. |
| supportsMultiview | This has the same functionality as SystemInfo.supportsMultiview and also mimics platform-specific behavior in the Unity Editor. |
| supportsParallelPSOCreation | This has the same functionality as SystemInfo.supportsParallelPSOCreation and also mimics platform-specific behavior in the Unity Editor. |
| supportsRawShadowDepthSampling | This has the same functionality as SystemInfo.supportsRawShadowDepthSampling and also mimics platform-specific behavior in the Unity Editor. |
| supportsRayTracing | This has the same functionality as SystemInfo.supportsRayTracing and also mimics platform-specific behavior in the Unity Editor. |
| supportsRayTracingShaders | This has the same functionality as SystemInfo.supportsRayTracingShaders and also mimics platform-specific behavior in the Unity Editor. |
| supportsRendering | This has the same functionality as SystemInfo.supportsRendering and also mimics platform-specific behavior in the Unity Editor. |
| supportsRenderTargetArrayIndexFromVertexShader | This has the same functionality as SystemInfo.supportsRenderTargetArrayIndexFromVertexShader and also mimics platform-specific behavior in the Unity Editor. |
| supportsSeparatedRenderTargetsBlend | This has the same functionality as SystemInfo.supportsSeparatedRenderTargetsBlend and also mimics platform-specific behavior in the Unity Editor. |
| supportsSetConstantBuffer | This has the same functionality as SystemInfo.supportsSetConstantBuffer and also mimics platform-specific behavior in the Unity Editor. |
| supportsShadows | This has the same functionality as SystemInfo.supportsShadows and also mimics platform-specific behavior in the Unity Editor. |
| supportsSparseTextures | This has the same functionality as SystemInfo.supportsSparseTextures and also mimics platform-specific behavior in the Unity Editor. |
| supportsStoreAndResolveAction | This property has the same functionality as SystemInfo.supportsStoreAndResolveAction and also shows platform-specific behavior in the Unity Editor. |
| supportsTessellationShaders | This has the same functionality as SystemInfo.supportsTessellationShaders and also mimics platform-specific behavior in the Unity Editor. |
| supportsTextureWrapMirrorOnce | This has the same functionality as SystemInfo.supportsTextureWrapMirrorOnce and also mimics platform-specific behavior in the Unity Editor. |
| supportsVariableRateShading | This has the same functionality as SystemInfo.supportsVariableRateShading and also mimics platform-specific behavior in the Unity Editor. |
| supportsVibration | This has the same functionality as SystemInfo.supportsVibration and also mimics platform-specific behavior in the Unity Editor. |
| systemMemorySize | This has the same functionality as SystemInfo.systemMemorySize and also mimics platform-specific behavior in the Unity Editor. |
| unsupportedIdentifier | This has the same functionality as SystemInfo.unsupportedIdentifier. |
| usesLoadStoreActions | This has the same functionality as SystemInfo.usesLoadStoreActions and also mimics platform-specific behavior in the Unity Editor. |
| usesReversedZBuffer | This has the same functionality as SystemInfo.usesReversedZBuffer and also mimics platform-specific behavior in the Unity Editor. |

### Static Methods

| Method | Description |
| --- | --- |
| GetCompatibleFormat | This has the same functionality as SystemInfo.GetCompatibleFormat and also mimics platform-specific behavior in the Unity Editor. |
| GetGraphicsFormat | This has the same functionality as SystemInfo.GetGraphicsFormat and also mimics platform-specific behavior in the Unity Editor. |
| GetRenderTextureSupportedMSAASampleCount | This has the same functionality as SystemInfo.GetRenderTextureSupportedMSAASampleCount and also mimics platform-specific behavior in the Unity Editor. |
| GetTiledRenderTargetStorageSize | This has the same functionality as SystemInfo.GetTiledRenderTargetStorageSize and also mimics platform-specific behavior in the Unity Editor. |
| IsFormatSupported | This has the same functionality as SystemInfo.IsFormatSupported and also mimics platform-specific behavior in the Unity Editor. |
| SupportsBlendingOnRenderTextureFormat | This has the same functionality as SystemInfo.SupportsBlendingOnRenderTextureFormat and also mimics platform-specific behavior in the Unity Editor. |
| SupportsRandomWriteOnRenderTextureFormat | This has the same functionality as SystemInfo.SupportsRandomWriteOnRenderTextureFormat. At the moment, the Device Simulator doesn't support simulation of this method. |
| SupportsRenderTextureFormat | This has the same functionality as SystemInfo.SupportsRenderTextureFormat and also mimics platform-specific behavior in the Unity Editor. |
| SupportsTextureFormat | This has the same functionality as SystemInfo.SupportsTextureFormat and also mimics platform-specific behavior in the Unity Editor. |
| SupportsVertexAttributeFormat | This has the same functionality as SystemInfo.SupportsVertexAttributeFormat and also mimics platform-specific behavior in the Unity Editor. |
