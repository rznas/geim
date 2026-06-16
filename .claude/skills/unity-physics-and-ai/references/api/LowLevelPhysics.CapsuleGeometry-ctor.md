<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics.CapsuleGeometry-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| radius | The radius of the capsule's end caps. |
| halfLength | The distance from the center of the capsule to the center of the end point sphere. |

### Description

Create a capsule shape with the provided parameters.

The capsule shape is made from a cylinder shape with 2 half-spheres at each end. Therefore, the total height of the capsule is `2 * halfLength + 2 * radius`.
