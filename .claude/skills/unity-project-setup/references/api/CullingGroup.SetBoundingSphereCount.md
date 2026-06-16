<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CullingGroup.SetBoundingSphereCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| count | The number of bounding spheres being used. |

### Description

Sets the number of bounding spheres in the bounding spheres array that are actually being used.

For performance reasons, you should not repeatedly re-allocate your bounding spheres array as new spheres are added and removed; instead you should create one array at the maximum size you will need, and then track the number of spheres that are actually being used within it. This way you avoid expensive allocation and copy operations.
