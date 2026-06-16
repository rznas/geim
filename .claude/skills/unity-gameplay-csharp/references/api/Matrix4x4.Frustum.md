<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Matrix4x4.Frustum.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| left | The X coordinate of the left side of the near projection plane in view space. |
| right | The X coordinate of the right side of the near projection plane in view space. |
| bottom | The Y coordinate of the bottom side of the near projection plane in view space. |
| top | The Y coordinate of the top side of the near projection plane in view space. |
| zNear | Z distance to the near plane from the origin in view space. |
| zFar | Z distance to the far plane from the origin in view space. |
| frustumPlanes | Frustum planes struct that contains the view space coordinates of that define a viewing frustum. |

### Returns

**Matrix4x4** A projection matrix with a viewing frustum defined by the plane coordinates passed in.

### Description

This function returns a projection matrix with viewing frustum that has a near plane defined by the coordinates that were passed in.

The corners of the near plane of the viewing frustum of the projection matrix are as follows:
 top-left : (left, top, zNear)
 top-right : (right, top, zNear)
 bottom-right : (right, bottom, zNear)
 bottom-left : (left, bottom, zNear)

The returned matrix embeds a z-flip operation whose purpose is to cancel the z-flip performed by the camera view matrix. If the view matrix is an identity or some custom matrix that doesn't perform a z-flip, consider multiplying the third column of the projection matrix (i.e. m02, m12, m22 and m32) by -1.

See also [glFrustum](https://msdn.microsoft.com/en-us/library/dd373537(v=vs.85).aspx).
