<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainData.GetInterpolatedHeights.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| xBase | The base x coordinate. |
| yBase | The base y coordinate. |
| xCount | The number of queries along the X axis. |
| yCount | The number of queries along the Y axis. |
| xInterval | The interval between each query along the X axis. |
| yInterval | The interval between each query along the Y axis. |

### Description

Gets an array of terrain height values using the normalized x,y coordinates.

The function returns a two-dimensional array of size [yCount, xCount]. Each returned value is an interpolation between the four neighboring Terrain height samples, based on where the sampling point is located within the quad of the four neighboring samples. The sampling points are evenly distributed, starting at (xBase, yBase). Points are spaced `xInterval` apart along the X axis, and `yInterval` apart along the Y axis. All the floating point arguments are specified as normalized coordinates, with 0 indicating the left/top border of the Terrain, and 1 indicating the right/bottom border of the Terrain. If a sampling point is placed outside of [0,1], it is clamped to the range.

### Parameters

| Parameter | Description |
| --- | --- |
| results | The array to fill with height values. |
| resultXOffset | The offset from the beginning of the array, along the X axis, at which to start filling in height values. |
| resultYOffset | The offset from the beginning of the array, along the Y axis, at which to start filling in height values. |
| xBase | The base x coordinate. |
| yBase | The base y coordinate. |
| xCount | The number of queries along the X axis. |
| yCount | The number of queries along the Y axis. |
| xInterval | The interval between each query along the X axis. |
| yInterval | The interval between each query along the Y axis. |

### Description

Fills the array with Terrain height values using normalized x,y coordinates.

The function takes a two-dimensional array, and fills height values into the part starting at (resultXOffset, resultYOffset). Unlike the function overload above, Unity guarantees not to allocate any memory during calls to the `GetInterpolatedHeights` function.
