<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsWorld-elementDepth.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Controls the element depth. When using custom drawing of geometry or primitive shapes there is no reference to the orthogonal axis used with respect to the current PhysicsWorld.transformPlane.

 The element depth is in world-space and for each transform plan is defined as: Element depth is rendered along the Z axis when using PhysicsWorld.TransformPlane.XY.Element depth is rendered along the Y axis when using PhysicsWorld.TransformPlane.XZ.Element depth is rendered along the X axis when using PhysicsWorld.TransformPlane.ZY. You should set the element depth before performing any custom draw.

 The element depth will be reset to zero when rendering is complete. This is only used in the Unity Editor or in a Development Player.
