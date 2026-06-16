<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Matrix4x4.LookAt.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| from | The source point. |
| to | The target point. |
| up | The vector describing the up direction (typically Vector3.up). |

### Returns

**Matrix4x4** The resulting transformation matrix.

### Description

Create a "look at" matrix.

Given a source point, a target point, and an up vector, computes a transformation matrix that corresponds to a camera viewing the target from the source, such that the right-hand vector is perpendicular to the up vector.

The resulting matrix corresponds to `Matrix4x4.TRS(from, Quaternion.LookRotation(to-from, up), Vector3.one)`.

Additional resources: Matrix4x4.TRS, Quaternion.LookRotation, Camera.worldToCameraMatrix, CommandBuffer.SetViewMatrix.
