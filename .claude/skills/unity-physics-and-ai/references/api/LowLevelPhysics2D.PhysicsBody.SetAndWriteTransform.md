<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsBody.SetAndWriteTransform.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| transform | The full transform of the body composed of position and rotation. |

### Returns

**bool** Whether the PhysicsBody.transformObject was written to.

### Description

Set the full transform of the body composed of position and rotation and also write to the associated PhysicsBody.transformObject. The PhysicsBody.transformObject won't be written to if it isn't assigned or the PhysicsWorld.transformWriteMode are off. The body will always be updated however. See PhysicsBody.transformObject.
