<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsBody.GetPositionAndRotation3D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| transform | The Transform object to be used as a reference when converting from 2D position/rotation to 3D position/rotation, usually the same as the TransformObject assigned to the PhysicsBody. |
| transformWriteMode | The transform write mode to use, usually the one currently assigned to the world is used. |
| transformPlane | The transform plane to use, usually the one currently assigned to the world is used. |
| position | The calculated output position. |
| rotation | The calculated output rotation. |

### Description

Get the full 3D position and rotation of the body given the specified TransformWriteMode and TransformPlane. Usually both the write-mode and transform-plane of the world the body is in would be used. This can only be called when a PhysicsBody.transformObject is assigned. Without this, an exception is thrown. See PhysicsWorld.transformWriteMode and PhysicsWorld.transformPlane.
