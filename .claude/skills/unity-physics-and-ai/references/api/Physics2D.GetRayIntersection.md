<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics2D.GetRayIntersection.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| ray | The 3D ray defining origin and direction to test. |
| distance | The maximum distance over which to cast the ray. |
| layerMask | The LayerMask filter used to select which layers to detect Colliders for. |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**NativeArray<RaycastHit2D>** The NativeArray that contains the results. This must be disposed of unless it contains no results.

### Description

Cast a 3D ray against the 2D Colliders in the Scene.

This function acts as a 3D "ray cast" but specifically designed to detect 2D Colliders. It achieved this by projecting the 3D ray into 2D space and then performs the 2D intersection test, ordering the results by the Z direction of the original 3D ray.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.

### Parameters

| Parameter | Description |
| --- | --- |
| ray | The 3D ray defining origin and direction to test. |
| distance | The maximum distance over which to cast the ray. |
| results | The list to receive the results. |
| layerMask | The LayerMask filter used to select which layers to detect Colliders for. |

### Returns

**int** The number of RaycastHit2D results returned.

### Description

Cast a 3D ray against the 2D Colliders in the Scene.

This function acts as a 3D "ray cast" but specifically designed to detect 2D Colliders. It achieved this by projecting the 3D ray into 2D space and then performs the 2D intersection test, ordering the results by the Z direction of the original 3D ray.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.

### Parameters

| Parameter | Description |
| --- | --- |
| ray | The 3D ray defining origin and direction to test. |
| distance | The maximum distance over which to cast the ray. |
| layerMask | The LayerMask filter used to select which layers to detect Colliders for. |

### Returns

**RaycastHit2D** The ray intersection result.

### Description

Cast a 3D ray against the 2D Colliders in the Scene.

This function acts as a 3D "ray cast" but specifically designed to detect 2D Colliders. It achieved this by projecting the 3D ray into 2D space and then performs the 2D intersection test, ordering the results by the Z direction of the original 3D ray.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.
