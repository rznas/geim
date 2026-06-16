<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.InputExtraction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides methods for extracting scene data and populating integration worlds for use in light transport calculations.

The InputExtraction class serves as the primary interface for converting Unity scene data into formats suitable for light transport calculations. It extracts geometry, materials, lights, settings, and light probe information from open scenes and prepares them for use with integrators.

This class is essential for:

- Converting Unity scenes to light transport input data structures.
- Preparing acceleration structures for ray tracing.
- Preparing input data for various light probe integrators.

The extracted data can be used with the GPU-accelerated (RadeonRaysContext) implementation.

### Static Methods

| Method | Description |
| --- | --- |
| ComputeOcclusionLightIndicesFromBakeInput | Determines the most influential lights for occlusion calculations at each probe position. |
| ExtractFromScene | Extracts all relevant scene data for light transport calculations from the currently open scenes. |
| GetShadowmaskChannelsFromLightIndices | Retrieves the shadowmask channel assignments for specified mixed lights. |
| PopulateWorld | Converts extracted scene data into optimized data structures for light transport calculations. |
