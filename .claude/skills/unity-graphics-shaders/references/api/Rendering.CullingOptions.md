<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CullingOptions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Flags used by ScriptableCullingParameters.cullingOptions to configure a culling operation.

Unity sets some of the CullingOptions flags with default values, and others depending on the properties of the Camera from which you obtained the ScriptableCullingParameters struct. You can override these values before performing the culling operation.

Additional resources: ScriptableCullingParameters.cullingOptions, ScriptableRenderContext.Cull, Camera.

### Properties

| Property | Description |
| --- | --- |
| None | Unset all CullingOptions flags. |
| ForceEvenIfCameraIsNotActive | When this flag is set, Unity performs the culling operation even if the Camera is not active. |
| OcclusionCull | When this flag is set, Unity performs occlusion culling as part of the culling operation. |
| NeedsLighting | When this flag is set, Unity culls Lights as part of the culling operation. |
| NeedsReflectionProbes | When this flag is set, Unity culls Reflection Probes as part of the culling operation. |
| Stereo | When this flag is set, Unity culls both eyes together for stereo rendering. |
| DisablePerObjectCulling | When this flag is set, Unity does not perform per-object culling. |
| ShadowCasters | When this flag is set, Unity culls shadow casters as part of the culling operation. |
