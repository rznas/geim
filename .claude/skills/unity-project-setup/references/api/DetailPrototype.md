<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/DetailPrototype.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Detail prototype used by the Terrain GameObject.

### Properties

| Property | Description |
| --- | --- |
| alignToGround | Rotate detail axis parallel to the ground's normal direction, so that the detail is perpendicular to the ground. |
| density | Controls detail density for this detail prototype, relative to it's size. |
| dryColor | Color when the DetailPrototypes are "dry". |
| healthyColor | Color when the DetailPrototypes are "healthy". |
| holeEdgePadding | Controls how far away detail objects are from the edge of the hole area. |
| maxHeight | Maximum height of the grass billboards (if render mode is GrassBillboard). |
| maxWidth | Maximum width of the grass billboards (if render mode is GrassBillboard). |
| minHeight | Minimum height of the grass billboards (if render mode is GrassBillboard). |
| minWidth | Minimum width of the grass billboards (if render mode is GrassBillboard). |
| noiseSeed | Specifies the random seed value for detail object placement. |
| noiseSpread | Controls the spatial frequency of the noise pattern used to vary the scale and color of the detail objects. |
| positionJitter | Controls how Unity generates the detail positions. |
| prototype | GameObject used by the DetailPrototype. |
| prototypeTexture | Texture used by the DetailPrototype. |
| renderMode | Render mode for the DetailPrototype. |
| targetCoverage | Controls the detail's target coverage. |
| useDensityScaling | Indicates the global density scale set in the terrain settings affects this detail prototype. |
| useInstancing | Indicates whether this detail prototype uses GPU Instancing for rendering. |
| usePrototypeMesh | Indicates whether this detail prototype uses the Mesh object from the GameObject specified by prototype. |

### Public Methods

| Method | Description |
| --- | --- |
| Validate | Returns true if the detail prototype is valid and the Terrain can accept it. |
