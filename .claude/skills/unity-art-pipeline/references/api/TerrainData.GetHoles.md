<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainData.GetHoles.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| xBase | First x index of Terrain holes samples to retrieve. |
| yBase | First y index of Terrain holes samples to retrieve. |
| width | Number of samples to retrieve along the Terrain holes x axis. |
| height | Number of samples to retrieve along the Terrain holes y axis. |

### Description

Gets an array of Terrain holes samples.

Returns a two-dimensional array of Terrain holes samples. The samples are represented as bool values: `true` for surface and `false` for hole. The array has the dimensions [height,width] and is indexed as [y,x].
