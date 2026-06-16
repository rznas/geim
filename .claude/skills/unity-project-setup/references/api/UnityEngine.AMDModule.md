<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UnityEngine.AMDModule.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A module that contains API you can use to interact with AMD graphics cards.

To activate this module at runtime, call AMD.Plugins.LoadPlugin with the AMD.Plugins.Plugin.AMDUnityPlugin value during application startup.

### Classes

| Class | Description |
| --- | --- |
| AMDUnityPlugin | Provides methods to manage loading and unloading AMD module plugins. |
| FSR2Context | Provides the persistent context for managing FSR2 initialization and per-frame execution state. |
| GraphicsDevice | Provides the main entry point for the AMD Module. Use this to interact with the FSR2 feature. |

### Structs

| Struct | Description |
| --- | --- |
| FSR2CommandExecutionData | Represents the state of an FSR2Context. If you call Device.ExecuteFSR2, Unity sends the values in this struct to the runtime. After this, you can change the values in this struct without any side effects. |
| FSR2CommandInitializationData | Represents the initialization state of a FSR2Context. You can only use and set this when calling GraphicsDevice.CreateFeature. |
| FSR2TextureTable | The set of texture slots available for the FSR2Context. SA GraphicsDevice.ExecuteFSR2. |

### Enumerations

| Enumeration | Description |
| --- | --- |
| FfxFsr2InitializationFlags | Options that represent subfeatures of FSR2. |
| FSR2Quality | Options for FSR2 performance modes. |
