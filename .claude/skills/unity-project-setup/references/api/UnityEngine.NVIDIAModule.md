<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UnityEngine.NVIDIAModule.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A module that contains API you can use to interact with NVIDIA graphics cards.

To activate this module at runtime, call NVIDIA.Plugins.LoadPlugin with the NVIDIA.Plugins.Plugin.NVUnityPlugin value during application startup. The class NVIDIA.Device contains the APIs to interact with the graphics cards' specific features.

### Classes

| Class | Description |
| --- | --- |
| DLSSContext | Represents the state of DLSS. |
| GraphicsDevice | Provides the main entry point for the NVIDIA Module. Use this to interact with specific NVIDIA graphics card features. |
| GraphicsDeviceDebugView | Represents a memory snapshot of the current feature states. The memory of the arrays/buffers in this struct are tied to the lifetime of the debug view. Additional resources: GraphicsDevice.CreateDebugView, GraphicsDevice.UpdateDebugView and GraphicsDevice.DeleteDebugView. |

### Structs

| Struct | Description |
| --- | --- |
| DLSSCommandExecutionData | Represents the state of a DLSSContext. If you call Device.ExecuteDLSS, Unity sends the values in this struct to the runtime. After this, you can change the values in this struct without any side effects. |
| DLSSCommandInitializationData | Represent the initialization state of a DLSSContext. You can only use and set this when calling GraphicsDevice.CreateFeature. |
