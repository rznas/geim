<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/NVIDIA.GraphicsDevice.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides the main entry point for the NVIDIA Module. Use this to interact with specific NVIDIA graphics card features.

### Static Properties

| Property | Description |
| --- | --- |
| device | Gets the device created by GraphicsDevice.CreateGraphicsDevice. If the device hasn't been created this property evaluates to null. |
| version | Gets the version that corresponds to Unity's host plugin that manages the NVIDIA.NVUnityPlugin official library. |

### Public Methods

| Method | Description |
| --- | --- |
| CreateDebugView | Creates an object containing debug information of the device. |
| CreateFeature | Creates a specific NVIDIA feature. |
| DeleteDebugView | Deletes a debug view created with GraphicsDevice.CreateDebugView. |
| DestroyFeature | Destroys a specific feature created with GraphicsDevice.CreateFeature. |
| ExecuteDLSS | Records the execution of DLSS into a rendering command buffer. This call does not execute the command buffer, it only appends custom commands into it. |
| GetOptimalSettings | Returns a structure containing the optimal settings for a specific target resolution and quality. |
| IsFeatureAvailable | Checks if the current NVIDIA graphics card supports the feature you specify using the GraphicsDeviceFeature enum. |
| UpdateDebugView | Updates a snapshpot of the debug information for the view object passed. |

### Static Methods

| Method | Description |
| --- | --- |
| CreateGraphicsDevice | Creates the main API object. Call this method only once in your application. |
| GetAvailableDLSSPresetsForQuality | Gets a bit mask of available presets for the given DLSSQuality. |
| GetDLSSPresetExplanation | Gets the explanation for the given preset. |
