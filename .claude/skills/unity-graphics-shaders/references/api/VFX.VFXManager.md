<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VFX.VFXManager.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this class to set a number of properties that control VisualEffect behavior within your Unity Project.

### Static Properties

| Property | Description |
| --- | --- |
| fixedTimeStep | The fixed interval in which the frame rate updates. The tick rate is in seconds. |
| maxDeltaTime | The maximum allowed delta time for an update interval. This limit affects fixedDeltaTime and deltaTime. The tick rate is in seconds. |

### Static Methods

| Method | Description |
| --- | --- |
| FlushEmptyBatches | Deallocates all empty batches used in the VFX runtime. |
| GetBatchedEffectInfo | Gets information on how a Visual Effect Asset is batched. |
| GetBatchedEffectInfos | Gets batch information of all active Visual Effect Assets. |
| IsCameraBufferNeeded | Queries which buffers the VFX Manager needs for the given Camera. |
| PrepareCamera | Use this method to prepare per-Camera VFX commands for this frame. |
| ProcessCameraCommand | Use this method to process per-Camera VFX commands for the current frame. |
| RequestRtasAabbConstruction | Request the construction of AABB buffers by the Visual Effects for the current frame. |
| SetCameraBuffer | Use this method to set the buffer of a given type for this Camera. This allows the VFX Manager to use the buffer. |
| SetRayTracingEnabled | Enables or disables Ray Tracing for all Visual Effects. |
