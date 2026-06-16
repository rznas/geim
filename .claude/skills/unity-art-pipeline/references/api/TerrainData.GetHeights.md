<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainData.GetHeights.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| xBase | First index of heightmap samples to retrieve along the Terrain's x axis. |
| yBase | First index of heightmap samples to retrieve along the Terrain's z axis. |
| width | Number of samples to retrieve along the Terrain's x axis. |
| height | Number of samples to retrieve along the Terrain's z axis. |

### Description

Gets an array of heightmap samples.

Returns a two dimensional array of heightmap samples. The samples are represented as float values ranging from 0 to 1. The array has the dimensions [height,width] and is indexed as [y,x].
