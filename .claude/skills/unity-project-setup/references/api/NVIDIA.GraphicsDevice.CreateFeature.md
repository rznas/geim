<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/NVIDIA.GraphicsDevice.CreateFeature.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| cmd | The rendering command buffer to record commands into. This call does not execute the command buffer, you must execute the command buffer yourself at any time after this call. |
| initSettings | Initial settings structure for the specific feature. |

### Returns

**DLSSContext** Returns a Deep Learning Super Sampling (DLSS) context object.

### Description

Creates a specific NVIDIA feature.

`initSettings` must belong to the feature you want to create. A usual use case is to call this function once per view you want to apply the feature too. For example, if your application uses two screens, call this function for each screen respectively. When the application no longer requires the feature (for example a view is destroyed), the application must call GraphicsDevice.DestroyFeature to recover the allocated memory.
