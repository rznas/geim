<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera.GetAllCameras.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| cameras | An array to be filled up with cameras currently in the Scene. |

### Description

Fills an array of Camera with the current cameras in the Scene, without allocating a new array.

The passed in array needs to be of minimum size of `allCamerasCount` . When the array size is larger than the `allCamerasCount` value, only the first elements up to allCamerasCount will be filled up. When the array size is smaller than the `allCamerasCount` value, an argument exception is thrown. When the array argument passed in is null, this call will throw a nullreference exception.

The return value indicates how many cameras are saved in the array.
