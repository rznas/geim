<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightProbesQuery.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Thread-safe struct for batch sampling Light Probes in a Scene.

This struct allows for sampling Light Probes from a job or a thread. If you load a scene additively, you must call LightProbes.Tetrahedralize to include its Light Probes in the batch sample.

### Properties

| Property | Description |
| --- | --- |
| IsCreated | This property indicates whether target query data is valid. |

### Constructors

| Constructor | Description |
| --- | --- |
| LightProbesQuery | "Constructor for creating Light Probe sample queries." |

### Public Methods

| Method | Description |
| --- | --- |
| CalculateInterpolatedLightAndOcclusionProbe | Calculate light probe and occlusion probe at the given world space position. |
| CalculateInterpolatedLightAndOcclusionProbes | Calculate light probes and occlusion probes at the given world space positions. |
| Dispose | Use this method to clean up the memory this query references. |
