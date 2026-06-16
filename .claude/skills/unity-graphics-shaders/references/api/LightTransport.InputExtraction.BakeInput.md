<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.InputExtraction.BakeInput.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Container for scene data to be used for light transport calculations.

An opaque data structure containing all scene information needed for light baking calculations, including geometry, materials, lights, and probe positions. This object is created by InputExtraction.ExtractFromScene and consumed by InputExtraction.PopulateWorld.

 The BakeInput contains:

 - Mesh geometry and material data. - Light source information. - Terrain height maps and hole maps. - Instance transformation data. - Lighting related settings. - Light probe group positions.

 Additional resources: InputExtraction.ExtractFromScene, InputExtraction.PopulateWorld.

### Public Methods

| Method | Description |
| --- | --- |
| AddProbeRequest | Adds a ProbeBakeRequest to the BakeInput. |
| GetOcclusionLightIndices | Retrieves the occlusion light indices from the BakeInput. |
| GetProbePositions | Retrieves the probe positions from the BakeInput. |
| SetOcclusionLightIndices | Sets the occlusion light indices on the BakeInput. |
| SetProbePositions | Sets the probe positions on the BakeInput. |
